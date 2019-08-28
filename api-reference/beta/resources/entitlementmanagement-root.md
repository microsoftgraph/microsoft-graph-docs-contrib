---
title: "Entitlement management"
description: "Govern access to resources including groups, apps and sites through Azure AD Identity Governance entitlement management"
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# Azure AD Entitlement Management

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) entitlement management can help you manage access to groups, applications, and SharePoint Online sites for internal users and also users outside your organization.

By creating access packages with the roles users need to have across those resources, and defining policies for who can request an access package and how long they can have an assignment to an access package, you can govern the lifecycle of access for both internal and external users.

The entitlement management resource types include:

- [accessPackage](accesspackage.md): an access package defines the collections of resource roles and the policies for how one or more users may obtain access to those resources.
- [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md): an access package assignment policy specifies the policy by which subjects may request or be assigned an access package via an access package assignment.
- [accessPackageAssignmentRequest](accesspackageassignmentrequest.md): an access package assignment request is created by a user who wishes to obtain an access package assignment.
- [accessPackageAssignment](accesspackageassignment.md): an access package assignment is an assignment of an access package to a particular subject, for a period of time.
- [accessPackageAssignmentResourceRole](accesspackageassignmentresourcerole.md): an access package assignment resource role indicates the resource-specific role which a subject has been assigned through an access package assignment.
- [accessPackageCatalog](accesspackagecatalog.md): an access package catalog is a container for access packages.

Note that the entitlement management feature, including the API, is included in Azure AD Premium P2.  The tenant where entitlement management is being used must have a valid purchased or trial Azure AD Premium P2 or EMS E5 subscription.

## Methods

The following table lists the methods that you can use to interact with entitlement management-related resources.

| Method		   | Return type	|Description|
|:---------------|:--------|:----------|

## See also

 - [What is Azure AD entitlement management?](https://docs.microsoft.com/en-us/azure/active-directory/governance/entitlement-management-overview)



<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
