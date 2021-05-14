---
title: External groups
description: Concept page for external groups
author: mecampos
ms.topic: conceptual #Required; leave this attribute/value as-is.
---
# External groups

You can use Microsoft Graph connectors to bring your external data into Microsoft Graph. A Microsoft Graph connection allows you to handle your data as a single unit, and you can view and work with the connections you create or are explicitly authorized to manage.

External items added via a Microsoft Graph connection can be governed by Azure Active Directory (AAD) users and groups, or by non-AAD groups and other group-like constructs (such as Business units, Teams, etc.).

You can use external groups to set permissions on external items. External groups can contain both AAD users and groups as well as non-AAD groups. See externalGroups and externalGroupMembers for detailed API information.

## Create an external group

To create an externalGroup (link to create externalGroup), you&#39;ll need a unique ID, a display name, and a description.

## Delete an external group

To delete an externalGroup (link to delete externalGroup), you will only need to know its unique ID.

## Create external group members

To create an externalGroupMember (link to create externalGroupMember), you&#39;ll need a unique ID, the type of member added to the external group, and the identity source to which the member belongs.

Creating an external group member enables the following scenarios:

- Add an Azure Active Directory user as a member.
- Add an Azure Active Directory group as a member.
- Add another external group as a member.

## Delete external group members

To delete an externalGroupMember (link to delete externalGroupMember), you will only need to know its unique ID.

## Related

Microsoft Graph Connectors API overview (link to doc)