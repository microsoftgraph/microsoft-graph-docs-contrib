---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	source = "BuildingAccessData"
	type = "#microsoft.graph.accessReviewDataUploadTriggerCallbackData"
	data = @{
		accessReviewId = "9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b"
		accessReviewInstanceId = "6a9b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b"
	}
}

New-MgBetaIdentityGovernanceCatalogAccessPackageResourceUploadSession -AccessPackageCatalogId $accessPackageCatalogId -AccessPackageResourceId $accessPackageResourceId -BodyParameter $params

```