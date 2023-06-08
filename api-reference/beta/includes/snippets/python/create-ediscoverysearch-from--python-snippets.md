---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EdiscoverySearch()
request_body.display_name = 'My search 2'

request_body.description = 'My first search'

request_body.content_query = '(Author=\"edison\")'

additional_data = [
'custodian_sources@odata_bind' => ['https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/custodians/0053a61a3b6c42738f7606791716a22a/userSources/43434642-3137-3138-3432-374142313639', 'https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/custodians/0053a61a3b6c42738f7606791716a22a/siteSources/169718e3-a8df-449d-bef4-ee09fe1ddc5d', 'https://graph.microsoft.com/beta/security/cases/ediscoveryCases(\'b0073e4e-4184-41c6-9eb7-8c8cc3e2288b\')/custodians(\'0053a61a3b6c42738f7606791716a22a\')/unifiedGroupSources(\'32e14fa4-3106-4bd2-a245-34bf0c718a7e\')', ],
'noncustodial_sources@odata_bind' => ['https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/noncustodialdatasources/35393639323133394345384344303043', ],
];
request_body.additional_data(additional_data)





result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').searches.post(request_body = request_body)


```