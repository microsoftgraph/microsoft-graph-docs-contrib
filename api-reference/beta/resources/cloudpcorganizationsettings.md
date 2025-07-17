---
title: "cloudPcOrganizationSettings resource type"
description: "Represents the Cloud PC organization settings for a tenant."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# cloudPcOrganizationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Cloud PC organization settings for a tenant. A tenant has only one **cloudPcOrganizationSettings** object.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/cloudpcorganizationsettings-get.md)|[cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md)|Read the properties and relationships of a [cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) object.|
|[Update](../api/cloudpcorganizationsettings-update.md)|[cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md)|Update the properties of a [cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|enableMEMAutoEnroll|Boolean|Specifies whether new Cloud PCs will be automatically enrolled in Microsoft Endpoint Manager (MEM). The default value is `false`.|
|enableSingleSignOn|Boolean|`True` if the provisioned Cloud PC can be accessed by single sign-on. `False` indicates that the provisioned Cloud PC doesn't support this feature. Default value is `false`. Windows 365 users can use single sign-on to authenticate to Microsoft Entra ID with passwordless options (for example, FIDO keys) to access their Cloud PC. Optional.|
|id|String|The ID of the organization settings.|
|osVersion|[cloudPcOperatingSystem](#cloudpcoperatingsystem-values)|The version of the operating system (OS) to provision on Cloud PCs. The possible values are: `windows10`, `windows11`, `unknownFutureValue`.|
|userAccountType|[cloudPcUserAccountType](#cloudpcuseraccounttype-values)|The account type of the user on provisioned Cloud PCs. The possible values are: `standardUser`, `administrator`, `unknownFutureValue`.|
|windowsSettings|[cloudPcWindowsSettings](../resources/cloudpcwindowssettings.md)|Represents the Cloud PC organization settings for a tenant. A tenant has only one **cloudPcOrganizationSettings** object. The default language value `en-US`.|

### cloudPcOperatingSystem values

|Member|Description|
|:---|:---|
|windows10|The Windows 10 operating system.|
|windows11|The Windows 11 operating system.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcUserAccountType values

|Member|Description|
|:---|:---|
|standardUser|A user without local administrative permissions on the Cloud PC. Standard users can only install content from the Microsoft Store app but they can't modify Windows settings that require local administrative privileges.|
|administrator|A user with full local administrative permissions on the Cloud PC. Administrators can install any software and modify any file or setting on the Cloud PC.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  "enableMEMAutoEnroll": "Boolean",
  "enableSingleSignOn": "Boolean",
  "id": "String (identifier)",
  "osVersion": "String",
  "userAccountType": "String",
  "windowsSettings": {
    "@odata.type": "microsoft.graph.cloudPcWindowsSettings"
  }
}
```
