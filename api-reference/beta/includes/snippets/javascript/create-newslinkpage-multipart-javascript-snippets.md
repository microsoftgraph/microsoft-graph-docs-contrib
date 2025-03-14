---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const baseSitePage = --MyPartBoundary198374
Content-Disposition: form-data; name='request'
Content-Type: application/json

{
  '@odata.type': '#microsoft.graph.newsLinkPage',
  title: 'Microsoft Build brings AI tools to the forefront for developers',
  newsWebUrl: 'https://someexternalnewssite.com/2024/05/23/microsoft-build-ai-tools-developers',
  description: 'You only need two simple letters to accurately convey the major shift in the technology space this year: A and I. Beyond those letters, however, is a complex, evolving and exciting way in which we work, communicate and collaborate.',
  '@microsoft.graph.bannerImageWebUrlContent': 'name:content'
}

--MyPartBoundary198374
Content-Disposition: form-data; name='content'; filename='b3.jpg'
Content-Type: image/jpeg

... binary image data ...

--MyPartBoundary198374;

await client.api('/sites/c1370818-f5e0-4a40-a99b-be4520640642/pages')
	.version('beta')
	.post(baseSitePage);

```