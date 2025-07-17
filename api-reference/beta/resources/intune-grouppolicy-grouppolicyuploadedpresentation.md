---
title: "groupPolicyUploadedPresentation resource type"
description: "Represents an ADMX checkBox element and an ADMX boolean element."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# groupPolicyUploadedPresentation resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an ADMX checkBox element and an ADMX boolean element.


Inherits from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List groupPolicyUploadedPresentations](../api/intune-grouppolicy-grouppolicyuploadedpresentation-list.md)|[groupPolicyUploadedPresentation](../resources/intune-grouppolicy-grouppolicyuploadedpresentation.md) collection|List properties and relationships of the [groupPolicyUploadedPresentation](../resources/intune-grouppolicy-grouppolicyuploadedpresentation.md) objects.|
|[Get groupPolicyUploadedPresentation](../api/intune-grouppolicy-grouppolicyuploadedpresentation-get.md)|[groupPolicyUploadedPresentation](../resources/intune-grouppolicy-grouppolicyuploadedpresentation.md)|Read properties and relationships of the [groupPolicyUploadedPresentation](../resources/intune-grouppolicy-grouppolicyuploadedpresentation.md) object.|
|[Create groupPolicyUploadedPresentation](../api/intune-grouppolicy-grouppolicyuploadedpresentation-create.md)|[groupPolicyUploadedPresentation](../resources/intune-grouppolicy-grouppolicyuploadedpresentation.md)|Create a new [groupPolicyUploadedPresentation](../resources/intune-grouppolicy-grouppolicyuploadedpresentation.md) object.|
|[Delete groupPolicyUploadedPresentation](../api/intune-grouppolicy-grouppolicyuploadedpresentation-delete.md)|None|Deletes a [groupPolicyUploadedPresentation](../resources/intune-grouppolicy-grouppolicyuploadedpresentation.md).|
|[Update groupPolicyUploadedPresentation](../api/intune-grouppolicy-grouppolicyuploadedpresentation-update.md)|[groupPolicyUploadedPresentation](../resources/intune-grouppolicy-grouppolicyuploadedpresentation.md)|Update the properties of a [groupPolicyUploadedPresentation](../resources/intune-grouppolicy-grouppolicyuploadedpresentation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|label|String|Localized text label for any presentation entity. The default value is empty. Inherited from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|
|id|String|Key of the entity. Inherited from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified. Inherited from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definition|[groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|The group policy definition associated with the presentation. Inherited from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupPolicyUploadedPresentation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyUploadedPresentation",
  "label": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```