<!-- markdownlint-disable MD041 -->

```py
import asyncio
from azure.identity.aio import ClientSecretCredential
from kiota_authentication_azure.azure_identity_authentication_provider import AzureIdentityAuthenticationProvider
from msgraph import GraphRequestAdapter
from msgraph import GraphServiceClient

credential = ClientSecretCredential(
    'tenant_id',
    'client_id',
    'client_secret'
)
auth_provider = AzureIdentityAuthenticationProvider(credential)
request_adapter = GraphRequestAdapter(auth_provider)
client = GraphServiceClient(request_adapter)

user = asyncio.run(client.users_by_id('userPrincipalName').get())
print(user.display_name)
```