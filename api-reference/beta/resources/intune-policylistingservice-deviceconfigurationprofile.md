---
title: "deviceConfigurationProfile resource type"
description: "The listing service profile entity contains the meta data of an Intune configuration profile "
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceConfigurationProfile resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The listing service profile entity contains the meta data of an Intune configuration profile 

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceConfigurationProfiles](../api/intune-policylistingservice-deviceconfigurationprofile-list.md)|[deviceConfigurationProfile](../resources/intune-policylistingservice-deviceconfigurationprofile.md) collection|List properties and relationships of the [deviceConfigurationProfile](../resources/intune-policylistingservice-deviceconfigurationprofile.md) objects.|
|[Get deviceConfigurationProfile](../api/intune-policylistingservice-deviceconfigurationprofile-get.md)|[deviceConfigurationProfile](../resources/intune-policylistingservice-deviceconfigurationprofile.md)|Read properties and relationships of the [deviceConfigurationProfile](../resources/intune-policylistingservice-deviceconfigurationprofile.md) object.|
|[Create deviceConfigurationProfile](../api/intune-policylistingservice-deviceconfigurationprofile-create.md)|[deviceConfigurationProfile](../resources/intune-policylistingservice-deviceconfigurationprofile.md)|Create a new [deviceConfigurationProfile](../resources/intune-policylistingservice-deviceconfigurationprofile.md) object.|
|[Delete deviceConfigurationProfile](../api/intune-policylistingservice-deviceconfigurationprofile-delete.md)|None|Deletes a [deviceConfigurationProfile](../resources/intune-policylistingservice-deviceconfigurationprofile.md).|
|[Update deviceConfigurationProfile](../api/intune-policylistingservice-deviceconfigurationprofile-update.md)|[deviceConfigurationProfile](../resources/intune-policylistingservice-deviceconfigurationprofile.md)|Update the properties of a [deviceConfigurationProfile](../resources/intune-policylistingservice-deviceconfigurationprofile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Profile Id of the object.|
|accountId|String|Account Id.|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified.|
|createdDateTime|DateTimeOffset|The date and time the object was created.|
|profileName|String|Profile name|
|profileType|[profileType](../resources/intune-policylistingservice-profiletype.md)|Profile Type. Possible values are: `settingsCatalog`, `administrativeTemplates`, `importedADMXTemplates`, `oemAppConfig`, `hardwareConfig`, `dcV1EndpointProtection`, `dcV1DeviceRestrictions`.|
|platformType|[platformType](../resources/intune-policylistingservice-platformtype.md)|Platform Type. Possible values are: `none`, `android`, `androidEnterprise`, `iOS`, `macOS`, `windows10X`, `windows10`.|
|configurationTechnologies|Int32|Configuration Technologies for Settins Catalog Policies|
|templateId|String|TemplateId for Settings Catalog Policies|
|roleScopeTagIds|String collection|The list of scope tags for the configuration.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationProfile",
  "id": "String (identifier)",
  "accountId": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "profileName": "String",
  "profileType": "String",
  "platformType": "String",
  "configurationTechnologies": 1024,
  "templateId": "String",
  "roleScopeTagIds": [
    "String"
  ]
}
```