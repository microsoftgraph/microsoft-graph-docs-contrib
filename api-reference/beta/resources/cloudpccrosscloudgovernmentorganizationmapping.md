---
title: "cloudPcCrossCloudGovernmentOrganizationMapping resource type"
description: "Represents a Cloud PC organization mapping between a public and US government cloud organizations."
author: "SuyliuMS"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcCrossCloudGovernmentOrganizationMapping resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Cloud PC organization mapping between a public and a US Government Community Cloud (GCC) organization.

For GCC customers, the Azure Active Directory (Azure AD) for the tenant is in a public cloud, but the Azure AD resources and Windows 365 Cloud PCs are in the US government cloud. Therefore, tenant mapping should be set up and maintained while updating the security and compliance requirements for the FedRAMP certification and onboarding to the US Government cloud. Tenant mapping is required for customer administrators when setting up and configuring Windows 365 and for GCC end users accessing their Windows 365 Cloud PCs.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create cloudPcCrossCloudGovernmentOrganizationMapping](../api/virtualendpoint-post-crosscloudgovernmentorganizationmapping.md)|[cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md)|Create a new [cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md) object.|
|[Get cloudPcCrossCloudGovernmentOrganizationMapping](../api/cloudpccrosscloudgovernmentorganizationmapping-get.md)|[cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md)|Read the properties and relationships of a [cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The tenant ID of the GCC tenant in public cloud.|
|organizationIdsInUSGovCloud|String collection|The tenant ID in the Azure Government cloud corresponding to the GCC tenant in the public cloud. Currently, 1:1 mappings are supported, so this collection can only contain one tenant ID.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcCrossCloudGovernmentOrganizationMapping",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcCrossCloudGovernmentOrganizationMapping",
  "id": "String (identifier)",
  "organizationIdsInUSGovCloud": [
    "String"
  ]
}
```

