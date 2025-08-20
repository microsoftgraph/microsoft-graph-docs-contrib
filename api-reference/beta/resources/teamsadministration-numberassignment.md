---
title: "numberAssignment resource type"
description: "Represents the collection of operations available for telephone number assignment for a user account."
author: "pavellatif"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# numberAssignment resource type

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the collection of operations available for telephone number assignment for a user account.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/teamsadministration-telephonenumbermanagementroot-list-numberassignments.md)|[microsoft.graph.teamsAdministration.numberAssignment](../resources/teamsadministration-numberassignment.md) collection|Get a list of the numberAssignment objects and their properties.|
|[Get](../api/teamsadministration-numberassignment-get.md)|[microsoft.graph.teamsAdministration.numberAssignment](../resources/teamsadministration-numberassignment.md)|Get details for a list of telephone numbers.|
|[assignNumber](../api/teamsadministration-numberassignment-assignnumber.md)|None|Assign a telephone number to a user account.|
|[unassignNumber](../api/teamsadministration-numberassignment-unassignnumber.md)|None|Unassign a telephone number from a user or resource account.|
|[updateNumber](../api/teamsadministration-numberassignment-updatenumber.md)|None|Update an existing telephone number with optional details.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activationState|microsoft.graph.teamsAdministration.activationState|The activation state of the telephone number. The possible values are: `activated`, `assignmentPending`, `assignmentFailed`, `updatePending`, `updateFailed`, `unknownFutureValue`.|
|assignmentCategory|microsoft.graph.teamsAdministration.assignmentCategory|Contains the assignment category such as Primary or Private. The possible values are: `primary`, `private`, `alternate`, `unknownFutureValue`.|
|assignmentStatus|microsoft.graph.teamsAdministration.assignmentStatus|The assignment status of the phone number. The possible values are: `unassigned`, `internalError`, `userAssigned`, `conferenceAssigned`, `voiceApplicationAssigned`, `thirdPartyAppAssigned`, `policyAssigned`, `unknownFutureValue`.|
|assignmentTargetId|String|The ID of the object the phone number is assigned to, either the ObjectId of a user or resource account, or the policy instance ID of a Teams shared calling routing policy instance.|
|capabilities|microsoft.graph.teamsAdministration.numberCapability collection|The list of capabilities assigned to the phone number.|
|city|String|The city where the phone number is located or associated with.|
|civicAddressId|String|The ID of the civic address assigned to the phone number.|
|id|String|The ID of the operation. Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md).|
|isoCountryCode|String|The ISO country code assigned to the phone number.|
|locationId|String|The ID of the location assigned to the phone number.|
|networkSiteId|String|This property is reserved for internal Microsoft use.|
|numberSource|microsoft.graph.teamsAdministration.numberSource|The source of the phone number. `online` is used for phone numbers assigned in Microsoft 365, and `onPremises` is used for phone numbers assigned in AD on-premises, which are synchronized into Microsoft 365. The possible values are: `online`, `onPremises`, `unknownFutureValue`.|
|numberType|microsoft.graph.teamsAdministration.numberType|The type of the phone number. The possible values are: `internalError`, `directRouting`, `callingPlan`, `operatorConnect`, `unknownFutureValue`.|
|operatorId|String|The ID of the operator.|
|portInStatus|microsoft.graph.teamsAdministration.portInStatus|The status of any port in order covering the phone number. The possible values are: `completed`, `firmOrderCommitmentAccepted`, `unknownFutureValue`.|
|reverseNumberLookupOptions|microsoft.graph.teamsAdministration.reverseNumberLookupOption collection|Status of Reverse Number Lookup (RNL). If set to `skipInternalVoip`, calls are routed through the external Public Switched Telephone Network (PSTN) instead of using internal VoIP resolution.|
|supportedCustomerActions|microsoft.graph.teamsAdministration.customerAction collection|Indicates what customer actions are available to modify the number.|
|telephoneNumber|String|The telephone number in the record. The recorded telephone number is always displayed with a '+' prefix, regardless of whether it was originally assigned with one.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.numberAssignment",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.numberAssignment",
  "id": "String (identifier)",
  "telephoneNumber": "String",
  "operatorId": "String",
  "numberType": "String",
  "activationState": "String",
  "capabilities": [
    "String"
  ],
  "locationId": "String",
  "civicAddressId": "String",
  "networkSiteId": "String",
  "assignmentTargetId": "String",
  "assignmentCategory": "String",
  "portInStatus": "String",
  "assignmentStatus": "String",
  "isoCountryCode": "String",
  "city": "String",
  "numberSource": "String",
  "supportedCustomerActions": [
    "String"
  ],
  "reverseNumberLookupOptions": [
    "String"
  ]
}
```
