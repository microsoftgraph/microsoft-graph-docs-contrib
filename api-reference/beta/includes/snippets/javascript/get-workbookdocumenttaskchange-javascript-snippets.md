---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workbookDocumentTaskChange = await client.api('/drive/root/workbook/worksheets/D5667D8C-B814-4748-B942-9C41BCC9BBB1/tasks/47B4663E-612F-4E06-B2E6-E8EBE819CBB6/changes/DCB9ED1D-2090-4088-9677-CBA8B9511EBF')
	.version('beta')
	.get();

```