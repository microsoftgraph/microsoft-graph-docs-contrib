---
title: "Working with the Azure AD entitlement management API"
description: "Govern access to resources including groups, apps and sites through Azure AD entitlement management"
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "conceptualPageType"
---

# Working with the Azure AD entitlement management API

Namespace: microsoft.graph

Azure Active Directory (Azure AD) entitlement management can help you manage access to groups, applications, and SharePoint Online sites for internal users as well as users outside your organization.

By creating access packages with the roles users need to have across those resources, and defining policies for who can request an access package and how long they can have an assignment to an access package, you can govern the lifecycle of access for both internal and external users.

The entitlement management resource types include:

- [accessPackage](accesspackage.md): Defines the collections of resource roles and the policies for how one or more users may obtain access to those resources.
- [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md): Specifies the policy by which subjects may request or be assigned an access package via an access package assignment.
- [accessPackageAssignmentRequest](accesspackageassignmentrequest.md): Created by a user who wishes to obtain an access package assignment.
- [accessPackageAssignment](accesspackageassignment.md): An assignment of an access package to a particular subject, for a period of time.
- [accessPackageCatalog](accesspackagecatalog.md): A container for access packages.
- [connectedOrganization](connectedorganization.md): A connected organization for external users who can request access.
- [entitlementManagementSettings](entitlementmanagementsettings.md): Tenant-wide settings for Azure AD entitlement management.
- [approval](approval.md): represents the decisions associated with an access package request.

Note that the entitlement management feature, including the API, is included in Azure AD Premium P2. The tenant where entitlement management is being used must have a valid purchased or trial Azure AD Premium P2 or EMS E5 subscription.


