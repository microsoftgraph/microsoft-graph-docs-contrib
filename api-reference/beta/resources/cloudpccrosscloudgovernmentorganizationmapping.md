---
title: "cloudPcCrossCloudGovernmentOrganizationMapping resource type"
description: "Represents a Cloud PC organization mapping between a public and US government cloud organizations."
author: "SuyliuMS"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# cloudPcCrossCloudGovernmentOrganizationMapping resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Cloud PC organization mapping between a public and a US Government Community Cloud (GCC) organization.

For GCC customers, the Microsoft Entra ID for the tenant is in a public cloud, but the Microsoft Entra resources and Windows 365 Cloud PCs are in the US government cloud. Therefore, tenant mapping should be set up and maintained while updating the security and compliance requirements for the FedRAMP certification and onboarding to the US Government cloud. Tenant mapping is required for customer administrators when setting up and configuring Windows 365 and for GCC end users accessing their Windows 365 Cloud PCs.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/virtualendpoint-post-crosscloudgovernmentorganizationmapping.md)|[cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md)|Create a new [cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md) object.|
|[Get](../api/cloudpccrosscloudgovernmentorganizationmapping-get.md)|[cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md)|Read the properties and relationships of a [cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The tenant ID of the GCC tenant in public cloud.|
|organizationIdsInUSGovCloud|String collection|The tenant ID in the Azure Government cloud corresponding to the GCC tenant in the public cloud. Currently, 1:1 mappings are supported, so this collection can only contain one tenant ID.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
