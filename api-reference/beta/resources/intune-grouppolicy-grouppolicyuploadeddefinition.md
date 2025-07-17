---
title: "groupPolicyUploadedDefinition resource type"
description: "The entity describes all of the information about a single group policy."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# groupPolicyUploadedDefinition resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The entity describes all of the information about a single group policy.


Inherits from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List groupPolicyUploadedDefinitions](../api/intune-grouppolicy-grouppolicyuploadeddefinition-list.md)|[groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md) collection|List properties and relationships of the [groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md) objects.|
|[Get groupPolicyUploadedDefinition](../api/intune-grouppolicy-grouppolicyuploadeddefinition-get.md)|[groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md)|Read properties and relationships of the [groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md) object.|
|[Create groupPolicyUploadedDefinition](../api/intune-grouppolicy-grouppolicyuploadeddefinition-create.md)|[groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md)|Create a new [groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md) object.|
|[Delete groupPolicyUploadedDefinition](../api/intune-grouppolicy-grouppolicyuploadeddefinition-delete.md)|None|Deletes a [groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md).|
|[Update groupPolicyUploadedDefinition](../api/intune-grouppolicy-grouppolicyuploadeddefinition-update.md)|[groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md)|Update the properties of a [groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|classType|[groupPolicyDefinitionClassType](../resources/intune-grouppolicy-grouppolicydefinitionclasstype.md)|Identifies the type of groups the policy can be applied to. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md). Possible values are: `user`, `machine`.|
|displayName|String|The localized policy name. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|explainText|String|The localized explanation or help text associated with the policy. The default value is empty. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|categoryPath|String|The localized full category path for the policy. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|supportedOn|String|Localized string used to specify what operating system or application version is affected by the policy. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|policyType|[groupPolicyType](../resources/intune-grouppolicy-grouppolicytype.md)|Specifies the type of group policy. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md). Possible values are: `admxBacked`, `admxIngested`.|
|hasRelatedDefinitions|Boolean|Signifies whether or not there are related definitions to this definition Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|groupPolicyCategoryId|Guid|The category id of the parent category Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|minDeviceCspVersion|String|Minimum required CSP version for device configuration in this definition Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|minUserCspVersion|String|Minimum required CSP version for user configuration in this definition Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|version|String|Setting definition version Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|id|String|Key of the entity. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definitionFile|[groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)|The group policy file associated with the definition. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|category|[groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|The group policy category associated with the definition. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|presentations|[groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md) collection|The group policy presentations associated with the definition. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|previousVersionDefinition|[groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|Definition of the previous version of this definition Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|nextVersionDefinition|[groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|Definition of the next version of this definition Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupPolicyUploadedDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyUploadedDefinition",
  "classType": "String",
  "displayName": "String",
  "explainText": "String",
  "categoryPath": "String",
  "supportedOn": "String",
  "policyType": "String",
  "hasRelatedDefinitions": true,
  "groupPolicyCategoryId": "Guid",
  "minDeviceCspVersion": "String",
  "minUserCspVersion": "String",
  "version": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```