---
title: "accessPackageAssignmentRequestorSettings complex type"
description: "Used for the `requestorSettings` property of an access package assignment policy. Provides additional settings to select who can create a request."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# accessPackageAssignmentRequestorSettings complex type

Namespace: microsoft.graph

Used for the requestor settings of an [access package assignment policy](accesspackageassignmentpolicy.md). Provides additional settings to select who can create a request for an access package on that policy.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowCustomAssignmentSchedule|Boolean|If false, the requestor is not permitted to include a schedule in their request.|
|enableOnBehalfRequestorsToAddAccess|Boolean|If true, allows on-behalf-of requestors to create a request to add access for another subject.|
|enableOnBehalfRequestorsToRemoveAccess|Boolean|If true, allows on-behalf-of requestors to create a request to remove access for another subject.|
|enableOnBehalfRequestorsToUpdateAccess|Boolean|If true, allows on-behalf-of requestors to create a request to update access for another subject.|
|enableTargetsToSelfAddAccess|Boolean|If true, allows requestors to create a request to add access for themselves.|
|enableTargetsToSelfRemoveAccess|Boolean|If true, allows requestors to create a request to remove their access.|
|enableTargetsToSelfUpdateAccess|Boolean|If true, allows requestors to create a request to update their access.|
|onBehalfRequestors|[subjectSet](../resources/subjectset.md) collection|The subjects who can request on-behalf-of others.|

## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequestorSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestorSettings",
  "enableTargetsToSelfAddAccess": "Boolean",
  "enableTargetsToSelfUpdateAccess": "Boolean",
  "enableTargetsToSelfRemoveAccess": "Boolean",
  "allowCustomAssignmentSchedule": "Boolean",
  "enableOnBehalfRequestorsToAddAccess": "Boolean",
  "enableOnBehalfRequestorsToUpdateAccess": "Boolean",
  "enableOnBehalfRequestorsToRemoveAccess": "Boolean",
  "onBehalfRequestors": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ]
}
```


