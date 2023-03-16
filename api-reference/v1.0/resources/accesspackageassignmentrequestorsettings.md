---
title: "accessPackageAssignmentRequestorSettings resource type"
description: "Used for the requestorSettings property of an access package assignment policy. Provides additional settings to select who can create a request."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# accessPackageAssignmentRequestorSettings complex type

Namespace: microsoft.graph

Used for the requestor settings of an [access package assignment policy](accesspackageassignmentpolicy.md). Provides additional settings to select who can create a request for an access package on that policy, and what they can include in their request.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowCustomAssignmentSchedule|Boolean|If `false`, the requestor is not permitted to include a schedule in their request.|
|enableOnBehalfRequestorsToAddAccess|Boolean|If `true`, allows on-behalf-of requestors to create a request to add access for another principal.|
|enableOnBehalfRequestorsToRemoveAccess|Boolean|If `true`, allows on-behalf-of requestors to create a request to remove access for another principal.|
|enableOnBehalfRequestorsToUpdateAccess|Boolean|If `true`, allows on-behalf-of requestors to create a request to update access for another principal.|
|enableTargetsToSelfAddAccess|Boolean|If `true`, allows requestors to create a request to add access for themselves.|
|enableTargetsToSelfRemoveAccess|Boolean|If `true`, allows requestors to create a request to remove their access.|
|enableTargetsToSelfUpdateAccess|Boolean|If `true`, allows requestors to create a request to update their access.|
|onBehalfRequestors|[subjectSet](../resources/subjectset.md) collection|The principals who can request on-behalf-of others.|

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
  "allowCustomAssignmentSchedule": "Boolean",
  "enableOnBehalfRequestorsToAddAccess": "Boolean",
  "enableOnBehalfRequestorsToRemoveAccess": "Boolean",
  "enableOnBehalfRequestorsToUpdateAccess": "Boolean",
  "enableTargetsToSelfAddAccess": "Boolean",
  "enableTargetsToSelfRemoveAccess": "Boolean",
  "enableTargetsToSelfUpdateAccess": "Boolean",
  "onBehalfRequestors": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ],
}
```


