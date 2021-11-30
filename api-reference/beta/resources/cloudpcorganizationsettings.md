---
title: "cloudPcOrganizationSettings resource type"
description: "Represents the Cloud PC organization settings for a tenant."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcOrganizationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Cloud PC organization settings for a tenant. And there's only one [cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) in one tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get cloudPcOrganizationSettings](../api/cloudpcorganizationsettings-get.md)|[cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md)|Read the properties and relationships of the [cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) object.|
|[Update cloudPcOrganizationSettings](../api/cloudpcorganizationsettings-update.md)|[cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md)|Update the properties of the [cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the organization settings.|
|osVersion|[cloudPcOperatingSystem](#cloudpcoperatingsystem--values)|The account type of user on provisioned Cloud PCs. The possible values are: `windows10`, `windows11`, `unknownFutureValue`.|
|userAccountType|[cloudPcUserAccountType](#cloudpcuseraccounttype--values)|The version of OS to provision on Cloud PCs. The possible values are: `standardUser`, `administrator`, `unknownFutureValue`.|

### cloudPcOperatingSystem values

|Member|Description|
|:---|:---|
|windows10|The Windows 10 operating system.|
|windows11|The Windows 11 operating system.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

### cloudPcUserAccountType values

|Member|Description|
|:---|:---|
|standardUser|A user without local administrator permissions on the Cloud PC. Can only install content from the Microsoft Store app. Cannot modify Windows settings that require local administrator privileges.|
|administrator|A user with full local administrator permissions on the Cloud PC. Can install any software and modify any file or setting on the Cloud PC.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcOrganizationSettings",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcOrganizationSettings",
  "id": "String (identifier)",
  "userAccountType": "String",
  "osVersion": "String"
}
```
