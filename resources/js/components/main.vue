<template>

<section id="products">
    <div class="container">
        <h2 class="titles">Products</h2>
        <div class="products-wrapper">
            <div class="row">
                <template v-for="product of products">
                    <div class=" col-sm-12 col-md-4">
                        <div class="product-item">
                            <span v-if="product.discount > 0" class="discount">{{product.discount}}% Descuento</span>
                            <div class="row">
                                <div class="col-sm-5">
                                    <span class="price">${{formatNum(product.price)}}</span>
                                    <h3 class="product-title">{{product.name}}</h3>
                                    <p class="product-text">{{(product.description).slice(0,100)}}</p>
                                </div>
                                <div class="col-sm-7">
                                     <div class="img-wrapper">
                                        <img :src="'images/'+product.image"  alt="">
                                    </div>
                                </div>
                                <div class="col-sm-12">

                                </div>
                            </div>
                        </div>
                    </div>
                </template>
            </div>
        </div>
    </div>
</section>
</template>

<script>
    import Products from '../services/products.js'
    export default {
        data(){
            return{
                products:{},
                product:{},
                tags:{}
            }
        },
        methods:{
            getProducts(){
                Products.Services().getAll()
                .then(response =>{
                    this.products = response.data;
                    console.log(response.data)
                    for(product of this.products){
                        this.getTags(product.id).then(tagsData=>{
                            this.tags = response.tagsData
                            consololog('d')
                        })
                    }
                });

            },
            getTags(id){
                //getting tags
                Products.Services().getTags(id).then(response=>{
                   console.log(response.data)
                   this.tags = response.data;
                });
            },
            formatNum(num){
                return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.')
            }
        },
        mounted() {
            console.log('Component mounted.')
            this.getProducts();

        }
    }
</script>
