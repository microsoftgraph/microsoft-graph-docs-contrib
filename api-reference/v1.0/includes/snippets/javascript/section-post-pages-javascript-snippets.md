---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onenotePage = --MyPartBoundary198374
Content-Disposition:form-data; name='Presentation'
Content-Type:text/html

<!DOCTYPE html>
<html>
  <head>
    <title>A page with <i>rendered</i> images and an <b>attached</b> file</title>
    <meta name='created' content='2015-07-22T09:00:00-08:00' />
  </head>
  <body>
    <p>Here\'s an image from an online source:</p>
    <img src='https://...' alt='an image on the page' width='500' />
    <p>Here\'s an image uploaded as binary data:</p>
    <img src='name:imageBlock1' alt='an image on the page' width='300' />
    <p>Here\'s a file attachment:</p>
    <object data-attachment='FileName.pdf' data='name:fileBlock1' type='application/pdf' />
  </body>
</html>

--MyPartBoundary198374
Content-Disposition:form-data; name='imageBlock1'
Content-Type:image/jpeg

... binary image data ...

--MyPartBoundary198374
Content-Disposition:form-data; name='fileBlock1'
Content-Type:application/pdf

... binary file data ...

--MyPartBoundary198374--;

await client.api('/me/onenote/sections/{id}/pages')
	.post(onenotePage);

```