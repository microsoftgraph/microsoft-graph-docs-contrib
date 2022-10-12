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

Represents a Cloud PC organization mapping between a public and US government cloud organizations.
For GCC (US Government Community Cloud) customers, the Azure Active Directory for the tenant is in a public cloud, but the Azure AD resources and Windows 365 Cloud PCs are in the US government cloud. Therefore, tenant mapping should be set up and maintained while updating the security and compliance requirements for the FedRAMP certification and onboarding to the US Government cloud. Tenant mapping is required for customer administrators when setting up & configuring Windows 365 and for GCC end users accessing their Windows 365 Cloud PCs.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create cloudPcCrossCloudGovernmentOrganizationMapping](../api/cloudpccrosscloudgovernmentorganizationmapping-post.md)|[cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md)|Create a new [cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md) object.|
|[Get cloudPcCrossCloudGovernmentOrganizationMapping](../api/cloudpccrosscloudgovernmentorganizationmapping-get.md)|[cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md)|Read the properties and relationships of a [cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The tenant ID of the GCC (US Government Community Cloud) tenant in public cloud.|
|organizationIdsInUSGovCloud|String collection|The ID of the tenant in Azure Government cloud which is corresponding to the GCC (US Government Community Cloud) tenant in public cloud. We only support 1:1 mapping for now, so this collection can only contain one tenant ID.|

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

