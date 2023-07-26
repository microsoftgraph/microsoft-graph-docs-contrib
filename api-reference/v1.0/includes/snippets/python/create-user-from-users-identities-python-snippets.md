---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = User()
request_body.display_name = 'John Smith'

identities_object_identity1 = ObjectIdentity()
identities_object_identity1.sign_in_type = 'userName'

identities_object_identity1.issuer = 'contoso.onmicrosoft.com'

identities_object_identity1.issuer_assigned_id = 'johnsmith'


identitiesArray []= identitiesObjectIdentity1;
identities_object_identity2 = ObjectIdentity()
identities_object_identity2.sign_in_type = 'emailAddress'

identities_object_identity2.issuer = 'contoso.onmicrosoft.com'

identities_object_identity2.issuer_assigned_id = 'jsmith@yahoo.com'


identitiesArray []= identitiesObjectIdentity2;
identities_object_identity3 = ObjectIdentity()
identities_object_identity3.sign_in_type = 'federated'

identities_object_identity3.issuer = 'facebook.com'

identities_object_identity3.issuer_assigned_id = '5eecb0cd'


identitiesArray []= identitiesObjectIdentity3;
request_body.identities(identitiesArray)


password_profile = PasswordProfile()
password_profile.password = 'password-value'

password_profile.force_change_password_next_sign_in = False


request_body.password_profile = password_profile
request_body.password_policies = 'DisablePasswordExpiration'




result = await client.users.post(request_body = request_body)


```