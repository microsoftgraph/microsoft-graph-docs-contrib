---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.directory.publickeyinfrastructure.certificatebasedauthconfigurations.item.upload.upload_post_request_body import UploadPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UploadPostRequestBody(
	upload_url = "https://microsoft.sharepoint.com/CBA/demo/CBARootPKI.p7b",
	sha256_file_hash = "D7F9....61E6F",
)

await graph_client.directory.public_key_infrastructure.certificate_based_auth_configurations.by_certificate_based_auth_pki_id('certificateBasedAuthPki-id').upload.post(request_body)


```