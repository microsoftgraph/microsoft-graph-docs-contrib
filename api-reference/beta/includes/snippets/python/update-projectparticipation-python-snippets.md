---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ProjectParticipation()
request_body.allowedaudiences(AllowedAudiences.Organization('allowedaudiences.organization'))

client = CompanyDetail()
client.department = 'Corporate Marketing'

client.web_url = 'https://www.contoso.com'


request_body.client = client



result = await client.me.profile.projects.by_project_id('projectParticipation-id').patch(request_body = request_body)


```