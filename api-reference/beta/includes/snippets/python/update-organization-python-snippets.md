---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Organization()
request_body.MarketingNotificationEmails(['marketing@contoso.com', ])

privacy_profile = PrivacyProfile()
privacy_profile.contact_email = 'alice@contoso.com'

privacy_profile.statement_url = 'https://contoso.com/privacyStatement'


request_body.privacy_profile = privacy_profile
request_body.SecurityComplianceNotificationMails(['security@contoso.com', ])

request_body.SecurityComplianceNotificationPhones(['(123) 456-7890', ])

request_body.TechnicalNotificationMails(['tech@contoso.com', ])




result = await client.organization.by_organization_id('organization-id').patch(request_body = request_body)


```