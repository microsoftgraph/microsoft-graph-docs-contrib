---
title: "customDataProvidedResource resource type"
description: "An access package catalog resource that represents an external application."
author: "pratima-cloudknox"
ms.date: 10/29/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customDataProvidedResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A customDataProvidedResource is a type of [accessPackageResource](../resources/accesspackageresource.md) that represents an external application. The originSystem of a customDataProvidedResource is always `CustomDataProvidedResource`. For more information, see [Include custom data provided resource in the catalog for catalog user Access Reviews (Preview)](/entra/id-governance/custom-data-resource-access-reviews).

See this [sample logic app](https://github.com/Azure/azure-quickstart-templates/tree/master/application-workloads/byod-logic-app) to learn how you can automate uploading access data and facilitate access reviews for disconnected applications.  

Inherits from [accessPackageResource](../resources/accesspackageresource.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/customdataprovidedresource-post-uploadsessions.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)|Create a new customDataProvidedResourceUploadSession object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedBy|String|The name of the user or application that first added this resource. Read-only.|
|addedOn|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
|attributes|[accessPackageResourceAttribute](../resources/accesspackageresourceattribute.md) collection| Contains information about the attributes to be collected from the requestor and sent to the resource application. |
|description|String|A description for the resource.|
|displayName|String|The display name of the resource, such as the application name, group name, or site name.|
|id|String| Read-only.|
|isPendingOnboarding|Boolean|`True` if the resource isn't yet available for assignment. Read-only. |
|notificationEndpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)| The endpoint configuration of the logic app that should be triggered when this access review goes into an initializing state.|
|originId|String|The unique identifier of the resource in the origin system. If the resource is a  Microsoft Entra group, originId is the identifier of the group. Supports `$filter` (`eq`).|
|originSystem|String|The type of the resource in the origin system. For a customDataProvidedResource, the value of the originSystem should be set to "CustomDataProvidedResource."  Supports `$filter` (`eq`).|
|resourceType|String|The type of the resource.|
|url|String|A unique resource locator for the resource, such as the URL for signing a user into an application.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageResourceEnvironment|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)|Contains the environment information for the resource. This environment can be set using either the `@odata.bind` annotation or the environment's *originId*. Supports `$expand`.|
|accessPackageResourceRoles|[accessPackageResourceRole](accesspackageresourcerole.md) collection| Read-only. Nullable. Supports `$expand`.|
|accessPackageResourceScopes|[accessPackageResourceScope](accesspackageresourcescope.md) collection| Read-only. Nullable. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customDataProvidedResource",
  "baseType": "microsoft.graph.accessPackageResource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResource",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "url": "String",
  "resourceType": "String",
  "originId": "String",
  "originSystem": "String",
  "isPendingOnboarding": "Boolean",
  "addedBy": "String",
  "addedOn": "String (timestamp)",
  "attributes": [
    {
      "@odata.type": "microsoft.graph.accessPackageResourceAttribute"
    }
  ],
  "notificationEndpointConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionEndpointConfiguration"
  }
}
```

