<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive & Stylish Design</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        #row {
            overflow: hidden;
            /* Clear float */
            margin: 10px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        #col,
        #col1 {
            box-sizing: border-box;
            padding: 20px;
        }

        #col {
            width: 100%;
            background-color: beige;
        }

        #col1 {
            width: 100%;
            background-color: #3498db;
            color: #fff;
        }

        h3 {
            margin-top: 0;
        }

        @media only screen and (min-width: 600px) {

            #col,
            #col1 {
                width: 50%;
            }
        }

        @media only screen and (min-width: 768px) {
            #col {
                width: 40%;
            }

            #col1 {
                width: 60%;
            }
        }

        @media only screen and (min-width: 992px) {
            #col {
                width: 10%;
                float: left;
                height: 150px;
            }

            #col1 {
                width: 70%;
            }
        }
    </style>
</head>

<body>
    <div id="row">
        <div id="col">
            <img src="your-image-url.jpg" alt="Image">
        </div>
        <div id="col1">
            <h3>Title</h3>
            <p>Text here</p>
            <p>Price in RS</p>
        </div>
    </div>
</body>

</html>