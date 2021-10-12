---
title: "Overview of the custom security attributes API (Preview)"
description: "Learn about the custom security attributes API to programmatically define and assign your own custom security attributes (key-value pairs) for Azure AD objects."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: conceptualPageType
---

# Overview of the custom security attributes API (Preview)

> [!IMPORTANT]
> The custom security attributes feature is currently in Preview. See the [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/) for legal terms that apply to Azure features that are in beta, preview, or otherwise not yet released into general availability.

Custom security attributes is a feature of Azure Active Directory (Azure AD) that enables you to define and assign your own custom security attributes (key-value pairs) to Azure AD objects. The [custom security attributes API](/graph/api/resources/customsecurityattributedefinition) in Microsoft Graph enables you to programmatically work with custom security attributes.

## What can you do with the API?

Using the custom security attributes API, you can do the following actions:

- Define your own custom security attributes
- Assign custom security attributes to users and applications (service principals)
- Add attribute sets, which are groups of related custom security attributes
- Specify allowed values for custom security attributes

## Permissions

To call the custom security attributes API, you must have the appropriate [custom security attributes permissions](/graph/permissions-reference#custom-security-attributes-permissions).

The signed-in user must also be assigned one of the following custom security attribute roles. By default, Global Administrator and other administrator roles do not have permissions to read, filter, define, manage, or assign custom security attributes.

- [Attribute Definition Reader](/azure/active-directory/roles/permissions-reference#attribute-definition-reader)
- [Attribute Definition Administrator](/azure/active-directory/roles/permissions-reference#attribute-definition-administrator)
- [Attribute Assignment Reader](/azure/active-directory/roles/permissions-reference#attribute-assignment-reader)
- [Attribute Assignment Administrator](/azure/active-directory/roles/permissions-reference#attribute-assignment-administrator)

## Next steps

- [Custom security attributes API](/graph/api/resources/customsecurityattributedefinition)
- [What are custom security attributes in Azure AD?](/azure/active-directory/fundamentals/custom-security-attributes-overview)
- [Add or deactivate custom security attributes in Azure AD](/azure/active-directory/fundamentals/custom-security-attributes-add)
- [Assign or remove custom security attributes for a user](/azure/active-directory/enterprise-users/users-custom-security-attributes)
