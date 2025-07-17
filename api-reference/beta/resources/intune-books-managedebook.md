---
title: "managedEBook resource type"
description: "An abstract class containing the base properties for Managed eBook."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# managedEBook resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An abstract class containing the base properties for Managed eBook.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedEBooks](../api/intune-books-managedebook-list.md)|[managedEBook](../resources/intune-books-managedebook.md) collection|List properties and relationships of the [managedEBook](../resources/intune-books-managedebook.md) objects.|
|[Get managedEBook](../api/intune-books-managedebook-get.md)|[managedEBook](../resources/intune-books-managedebook.md)|Read properties and relationships of the [managedEBook](../resources/intune-books-managedebook.md) object.|
|[assign action](../api/intune-books-managedebook-assign.md)|None||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|displayName|String|Name of the eBook.|
|description|String|Description.|
|publisher|String|Publisher.|
|publishedDateTime|DateTimeOffset|The date and time when the eBook was published.|
|largeCover|[mimeContent](../resources/intune-shared-mimecontent.md)|Book cover.|
|createdDateTime|DateTimeOffset|The date and time when the eBook file was created.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the eBook was last modified.|
|informationUrl|String|The more information Url.|
|privacyInformationUrl|String|The privacy statement Url.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[managedEBookCategory](../resources/intune-books-managedebookcategory.md) collection|The list of categories for this eBook.|
|assignments|[managedEBookAssignment](../resources/intune-books-managedebookassignment.md) collection|The list of assignments for this eBook.|
|installSummary|[eBookInstallSummary](../resources/intune-books-ebookinstallsummary.md)|Mobile App Install Summary.|
|deviceStates|[deviceInstallState](../resources/intune-books-deviceinstallstate.md) collection|The list of installation states for this eBook.|
|userStateSummary|[userInstallStateSummary](../resources/intune-books-userinstallstatesummary.md) collection|The list of installation states for this eBook.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedEBook"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedEBook",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "publisher": "String",
  "publishedDateTime": "String (timestamp)",
  "largeCover": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "informationUrl": "String",
  "privacyInformationUrl": "String"
}
```