---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedGroupSource()
group = Group()
group.mail = 'SOCTeam@M365x809305.onmicrosoft.com'


request_body.group = group
request_body.includedsources(SourceType.Mailbox, site('sourcetype.mailbox, site'))




result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').custodians.by_custodian_id('ediscoveryCustodian-id').unified_group_sources.post(request_body = request_body)


```