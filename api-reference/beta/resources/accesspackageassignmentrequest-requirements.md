---
title: "accessPackageAssignmentRequestRequirements complex type"
description: "The accessPackageAssignmentRequestRequirements type identifies a collection requirements necessary to request the specified access package"
localization_priority: Normal
author: "ajburnle"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# accessPackageAssignmentRequestRequirements complex type

**accessPackageAssignmentRequestRequirements** are requirements that a caller must fulfill in order to successfully create an accessPackageAssignmentRequest for the accessPackage specified as part of the URL. Requirements are determined by evaluating policies associated with the **accessPackage**. 

## Properties

This type has the following properties:

> [!NOTE]
> All properties are not-required and effectively read-only because we have no API for a caller to create/modify one of these objects.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| policyDisplayName | String | The display name of the policy that the user is trying to request access using. |
| policyDescription | String | The description of the policy that the user is trying to request access using.  |
| policyId | String | The ID of the policy that these requirements are associated with. This ID can be used when creating a new assignment request. |
| isApprovalRequired | Boolean | Whether or not a request must be approved by an approver. |
| isApprovalRequiredForExtension  | Boolean | Whether approval is required when a user tries to extend their access. |
| isRequestorJustificationRequired | Boolean | Whether a requestor must supply justification when submitting an assignment request. |
| isCustomAssignmentScheduleAllowed | Boolean | Whether the requestor is allowed to set a custom schedule. |
| schedule | requestSchedule | Schedule restrictions enforced, if any; null if none. |
| questions | accessPackageQuestion collection | Questions that are configured on the policy, required or optional; callers can determine if a question is required or optional based on the **isRequired** property on accessPackageQuestion. `null` if no questions are configured. |
| existingAnswers | accessPackageQuestion collection | Answers that have already been provided. |

## JSON representation

The following is a JSON representation of the type.

```json
{ 

  

    "value": [ 

        { 

            "policyDisplayName": "string", 

            "policyDescription": "string",

            "policyId": "Edm.String",  

            "isApprovalRequired": false, 

            "isApprovalRequiredForExtension": false, 

            "isRequestorJustificationRequired": false,

            "isCustomAssignmentScheduleAllowed": [],

        } 

    ] 

} 
```
