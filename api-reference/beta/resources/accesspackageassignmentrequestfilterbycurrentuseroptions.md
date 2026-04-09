---
title: "accessPackageAssignmentRequestFilterByCurrentUserOptions enum type"
description: "Options for current user to use as a filter on access package assignment requests list."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "enumPageType"
ms.date: 03/06/2024
---

# accessPackageAssignmentRequestFilterByCurrentUserOptions enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The list of current user options that can be used to filter on the [access package assignment requests](../api/accesspackageassignmentrequest-filterbycurrentuser.md) list.

## Members
|Member|Description|
|:---|:---|
|target|Used to get the `accessPackageAssignmentRequest` objects where the signed-in user is the target. The resulting list includes all the assignment requests, current and expired, that were requested by the caller or for the caller, across all catalogs and access packages.|
|createdBy|Used to get the `accessPackageAssignmentRequest` objects created by the signed-in user. The resulting list includes all of the assignment requests that the caller has created for themselves or on behalf of others, such as in case of admin direct assignment, across all catalogs and access packages.|
|approver|Used to get the `accessPackageAssignmentRequest` objects where the signed-in user is an allowed approver in any contained `accessPackageAssignment/accessPackageAssignmentPolicy/requestApprovalSettings/approvalStages` (`primaryApprovers` or `escalationApprovers`). The resulting list includes the assignment requests in *pending* state, across all catalogs and access packages and that need a decision from the caller. The resulting list includes the assignment requests in a `pending` state, across all catalogs and access packages and that need a decision from the caller.|
