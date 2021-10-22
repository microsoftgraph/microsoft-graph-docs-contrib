---
title: "Overview of custom security attributes using the Microsoft Graph API (Preview)"
description: "Learn how to programmatically define your own custom security attributes and assign them to Azure AD objects using the Microsoft Graph API."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: conceptualPageType
---

# Overview of custom security attributes using the Microsoft Graph API (Preview)

> [!IMPORTANT]
> The custom security attributes feature is currently in Preview. See the [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/) for legal terms that apply to Azure features that are in beta, preview, or otherwise not yet released into general availability.

[Custom security attributes](/azure/active-directory/fundamentals/custom-security-attributes-overview) in Azure Active Directory (Azure AD) are business-specific attributes (key-value pairs) that you can define and assign to Azure AD objects. These attributes can be used to store information, categorize objects, or enforce fine-grained access control over specific Azure resources. Custom security attributes can be used with [Azure attribute-based access control (Azure ABAC)](/azure/role-based-access-control/conditions-overview).

This article provides an overview of how to use the Microsoft Graph API to programmatically define and assign your own custom security attributes.

## Key resource types

The following are the building blocks of custom security attributes.

### Attribute sets

An *attribute set* is a group of related custom security attributes. The following are the general characteristics of attribute sets:

+ Name can't include spaces or special characters.
+ Can't be renamed or deleted.
+ Can be delegated to other users to define and assign custom security attributes.

To configure attribute sets, use the [attributeSet resource type](attributeset.md).
 
### Custom security attribute definitions

A *custom security attribute definition* is the schema of a custom security attribute or key-value pair. For example, the custom security attribute name, description, data type, and predefined values. The following are the general characteristics of custom security attributes definitions:

+ Name can't include spaces or special characters.
+ Can't be renamed or deleted, but can be deactivated.
+ Must be part of an attribute set.

To configure custom security attribute definitions, use the [customSecurityAttributeDefinition resource type](customsecurityattributedefinition.md).

### Allowed values

*Allowed values* represent the predefined values of a custom security attribute. The following are the general characteristics of allowed values:

+ Values can include spaces, but some special characters are not allowed.
+ Can't be renamed or deleted, but can be deactivated.
+ More predefined values can be added later.
+ Can be of Boolean, Integer, or String data types.

To configure allowed values, use the [allowedValue resource type](allowedvalue.md).

## Which directory objects support custom security attributes?

Custom security attributes can be assigned to the following objects by using the `customSecurityAttributes` property. Directory synced users from an on-premises Active Directory can also be assigned custom security attributes.

+ [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true)
+ [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true)

## Limits and constraints

Here are some of the limits and constraints for custom security attributes.

| Resource | Limit | Notes |
| --- | :---: | --- |
| Attribute definitions per tenant | 500 | Applies only to active attributes in the tenant |
| Attribute sets per tenant | 100 |  |
| Attribute set name length | 32 | Unicode characters and case insensitive |
| Attribute set description length | 128 | Unicode characters |
| Attribute name length | 32 | Unicode characters and case insensitive |
| Attribute description length | 128 | Unicode characters |
| Predefined values |  | Case sensitive |
| Predefined values per attribute definition | 100 |  |
| Attribute value length | 64 | Unicode characters |
| Attribute values assigned per object | 50 | Values can be distributed across single and multi-valued attributes.<br/>Example: 5 attributes with 10 values each or 50 attributes with 1 value each |
| Characters not allowed for:<br/>Attribute set name<br/>Attribute name | ``<space> ` ~ ! @ # $ % ^ & * ( ) _ - + = { [ } ] \| \ : ; " ' < , > . ? /`` |  |
| Characters not allowed for:<br/>Attribute values | `# % & * + \ : " / < > ?` |  |

## Permissions

To manage custom security attributes, the calling principal must be assigned one of the following Azure AD roles. By default, Global Administrator and other administrator roles do not have permissions to read, define, or assign custom security attributes.

+ [Attribute Definition Reader](/azure/active-directory/roles/permissions-reference#attribute-definition-reader)
+ [Attribute Definition Administrator](/azure/active-directory/roles/permissions-reference#attribute-definition-administrator)
+ [Attribute Assignment Reader](/azure/active-directory/roles/permissions-reference#attribute-assignment-reader)
+ [Attribute Assignment Administrator](/azure/active-directory/roles/permissions-reference#attribute-assignment-administrator)

Also, the calling principal must be granted the appropriate [custom security attributes permissions](/graph/permissions-reference#custom-security-attributes-permissions).

## License requirements

Using custom security attributes requires an Azure AD Premium P1 or P2 license.

## Next steps

+ [customSecurityAttributeDefinition resource type](/graph/api/resources/customsecurityattributedefinition)
+ [Assign, update, or remove custom security attributes using the Microsoft Graph API](/graph/custom-security-attributes-examples)
+ [What are custom security attributes in Azure AD?](/azure/active-directory/fundamentals/custom-security-attributes-overview)

