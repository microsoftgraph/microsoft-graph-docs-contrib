---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedGroupSource()
request_body.includedsources(SourceType.Mailbox, site('sourcetype.mailbox, site'))

additional_data = [
'group@odata_bind' => 'https://graph.microsoft.com/v1.0/groups/b96f95c5-b1b3-4142-b039-8ac79e7d2c84', 
];
request_body.additional_data(additional_data)





result = await client.compliance.ediscovery.cases.by_case_id('case-id').custodians.by_custodian_id('custodian-id').unified_group_sources.post(request_body = request_body)


```