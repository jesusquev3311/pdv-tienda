# pdv-tienda
Laravel Products API

<h2>Requirements for Development environment<h2/>

<ul>
  <li>PHP</li>
  <li>Mysql server</li>
  <li>Composer</li>
  <li>Laravel<li/>
  <li>Postmant - to check enpoints</li>
</ul>

<h2>Installation<h2/>

<ol>
  <li>Clone the repository to your directory</li>
  <li>import the database located at the database-backup folder in the project's directory into your MySQL server</li>
  <li>Modify the .env file by adding your database authentification credentials and database name.</li>
  <li>Open the terminal at your project directory and run "composer install" to update or install dependencies<li/>
  <li>run "PHP artisan serve" to run the localhost server</li>
  <li>use postmant to test the endpoints at http://127.0.0.1:8000/api/{endpoint-name}</li>
</ol>

<h2>End Points List</h2>

<ul>
  <li>
    Products
    <ul>
      <li> Get all Products - method: GET url: '/products'</li>
      <li> Get Product - method: GET url:'/products/{product-id}'</li>
      <li> Add Product - method: POST url:'/products/'</li>
      <li> Update Product - method: PUT url:'/products/{porduct-id}'</li>
      <li> Update Product - method: DELETE url:'/products/{porduct-id}'</li>
      <li> Get Product tags - method: GET url:'/products/{product-id}/tags'</li>
      <li> Delete Product tags- method: DELETE url:'/products/{product-id}/tags'</li>
      <li> Delete Product tag- method: DELETE url:'/products/{product-id}/tags/{tag-id}'</li>
    </ul>
  </li>
</ul>

<img src="https://lh3.googleusercontent.com/-_6td7Qsezi0/XNd2XS0cNQI/AAAAAAAAFJI/FfIiV4ZBwEk0xZLFgf1eWmwkqDRSv4l7QCK8BGAs/s0/2019-05-11.png">


<h2>Front End Deployment</h2>

<ul>
  <li>after running php artisan serve, in anoter terminal tab run npm install</li>
  <li>after dependencies installations run npm run dev or npm run watch to compile js and css</li>
  <li>Please use the new database schema that is in database-backup named dvp_database-front</li>
</ul>
