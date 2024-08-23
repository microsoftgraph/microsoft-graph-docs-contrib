---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const virtualEventPresenter = {
  presenterDetails: {
    bio: {
      content: 'Lead Product Manager of Contoso Sales department',
      contentType: 'text'
    },
    company: 'Contoso',
    jobTitle: 'Product Manager',
    linkedInProfileWebUrl: 'https://linkedin.com/in/DianeDemoss',
    personalSiteWebUrl: 'https://DianeDemoss.com'
  }
};

await client.api('/solutions/virtualEvents/webinars/88b245ac-b0b2-f1aa-e34a-c81c27abdac2@f9448ec4-804b-46af-b810-62085248da33/presenters/831affc2-4c8a-9929-50e7-02964563b6e4')
	.version('beta')
	.update(virtualEventPresenter);

```