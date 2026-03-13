---
title: "adminCloudLicensing resource type"
description: "Represents the root of the Cloud Licensing API for the entire organization."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: resourcePageType
---

# adminCloudLicensing resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the root of the cloud licensing API for the entire organization.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List allotments](../api/cloudlicensing-admincloudlicensing-list-allotments.md)|[microsoft.graph.cloudLicensing.allotment](../resources/cloudlicensing-allotment.md) collection|Get a list of the [allotment](../resources/cloudlicensing-allotment.md) objects and their properties.|
|[List assignmentErrors](../api/cloudlicensing-admincloudlicensing-list-assignmenterrors.md)|[microsoft.graph.cloudLicensing.assignmentError](../resources/cloudlicensing-assignmenterror.md) collection|Get a list of the [assignmentError](../resources/cloudlicensing-assignmenterror.md) objects within an organization or affecting a specific user.|
|[List assignments](../api/cloudlicensing-admincloudlicensing-list-assignments.md)|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) collection|Get a list of license [assignment](../resources/cloudlicensing-assignment.md) objects within an organization.|
|[Create assignment](../api/cloudlicensing-admincloudlicensing-post-assignments.md)|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md)|Create a new license [assignment](../resources/cloudlicensing-assignment.md) by posting to the **assignments** collection of an organization.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|allotments|[microsoft.graph.cloudLicensing.allotment](../resources/cloudlicensing-allotment.md) collection|The set of all allotments within the organization. Read-only.|
|assignmentErrors|[microsoft.graph.cloudLicensing.assignmentError](../resources/cloudlicensing-assignmenterror.md) collection|The set of all asynchronous allotment assignment errors that affect the organization. Read-only.|
|assignments|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) collection|The set of all license assignments within the organization. Not nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudLicensing.adminCloudLicensing",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudLicensing.adminCloudLicensing"
}
```

