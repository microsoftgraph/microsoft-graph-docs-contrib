---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.service_principal import ServicePrincipal
from msgraph.generated.models.key_credential import KeyCredential
from msgraph.generated.models.password_credential import PasswordCredential

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	key_credentials = [
		KeyCredential(
			custom_key_identifier = base64.urlsafe_b64decode("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A"),
			end_date_time = "2027-01-22T00:00:00Z",
			key_id = UUID("4c266507-3e74-4b91-aeba-18a25b450f6e"),
			start_date_time = "2024-02-21T17:09:35Z",
			type = "X509CertAndPassword",
			usage = "Sign",
			key = base64.urlsafe_b64decode("MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs="),
			display_name = "CN=AWSContoso",
		),
		KeyCredential(
			custom_key_identifier = base64.urlsafe_b64decode("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A"),
			end_date_time = "2027-01-22T00:00:00Z",
			key_id = UUID("e35a7d11-fef0-49ad-9f3e-aacbe0a42c42"),
			start_date_time = "2024-02-21T17:09:35Z",
			type = "AsymmetricX509Cert",
			usage = "Verify",
			key = base64.urlsafe_b64decode("MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs="),
			display_name = "CN=AWSContoso",
		),
	],
	password_credentials = [
		PasswordCredential(
			custom_key_identifier = base64.urlsafe_b64decode("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A"),
			key_id = UUID("4c266507-3e74-4b91-aeba-18a25b450f6e"),
			end_date_time = "2022-01-27T19:40:33Z",
			start_date_time = "2027-01-22T00:00:00Z",
			secret_text = "61891f4ee44d",
		),
	],
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body)


```