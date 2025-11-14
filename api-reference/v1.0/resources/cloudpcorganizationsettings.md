---
title: "cloudPcOrganizationSettings resource type"
description: "Represents the Cloud PC organization settings for a tenant."
author: "wx2486"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 11/14/2025
---

# cloudPcOrganizationSettings resource type

Namespace: microsoft.graph

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
|osVersion|[cloudPcOperatingSystem](#cloudpcoperatingsystem-values)|The version of OS to provision on Cloud PCs. Possible values: `windows10`, `windows11`.|
|userAccountType|[cloudPcUserAccountType](#cloudpcuseraccounttype-values)|The account type of user on provisioned Cloud PCs. Possible values: `standardUser`, `administrator`.|
|windowsSettings|[cloudPcWindowsSettings](../resources/cloudpcwindowssettings.md)|Represents the Cloud PC organization settings for a tenant. A tenant has only one **cloudPcOrganizationSettings** object. The default language value `en-US`.|

### cloudPcOperatingSystem values

|Member|Description|
|:---|:---|
|windows10|Default. Indicates the Cloud PC is associated Windows 10 operating system.|
|windows11|Indicates the Cloud PC is associated Windows 11 operating system.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

### cloudPcUserAccountType values

|Member|Description|
|:---|:---|
|standardUser|Default. Indicates a user without local administrator permissions on the Cloud PC. This type of account will have permission to install content from the Microsoft Store app. This account type is not allowed to modify Windows settings that requires local administrator privileges.|
|administrator|Indicates a user with full local administrator permissions on the Cloud PC. This type of account will have permission to install any software and modify any file or setting on the Cloud PC.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

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
