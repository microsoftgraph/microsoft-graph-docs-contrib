---
title: "Delegated admin privileges (DAP) API overview"
description: "Delegated admin privileges allow Microsoft partners to configure and request granular and time-bound access to their customers' environments, allowing customers to enforce a least-privileged access for Microsoft partners."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: resourcePageType
---

# Delegated admin privileges (DAP) API overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

As part of the Microsoft Partner Center ecosystem, Microsoft partners in the Cloud Solution Provider, Value Added Reseller, or Advisor programs can perform administrative operations on their customer tenants to help manage the customer's services, for example, Azure AD and Microsoft 365. This capability previously allowed partners to assume a Global Administrator role in the customer tenant indefinitely, creating potential security exposures and limiting market potential.

**Delegated admin privileges (DAP)** provides partners with least-privileged access to their customer tenants following the [Zero Trust cybersecurity model](/security/zero-trust/). Through DAP, partners configure and request granular and time-bound access to their customers' environments, and customers must explicitly grant this least-privileged access to partners. In addition, partners must request specific roles for customer tenant administration for a definite amount of time. This control eliminates the need for partners to have the Global Administrator role in their customer's tenant but rather, they now have lesser privileged permissions that they absolutely need for delegated administrative tasks.

For more information about DAP, see:
+ [Introduction to granular delegated admin privileges (GDAP)](/partner-center/gdap-introduction)
+ [Least-privileged roles by task](/partner-center/gdap-least-privileged-roles-by-task)

## Use cases for delegated admin APIs

### Delegated admin relationship

| Use cases | APIs |
|--|--|
| Create a new delegated admin relationship for approval by any customer <br/> Create a new delegated admin relationship for approval by a specific customer | [Create delegatedAdminRelationship](../api/tenantrelationship-post-delegatedadminrelationships.md) |
| List all delegated admin relationships of a partner <br/> List all delegated admin relationships for a specific customer | [List delegatedAdminRelationships](../api/tenantrelationship-list-delegatedadminrelationships.md) |
| Get a delegated admin relationship by ID | [Get delegatedAdminRelationship](../api/delegatedadminrelationship-get.md)  |
| Delete delegated admin relationship | [Delete delegatedAdminRelationship](../api/delegatedadminrelationship-delete.md) |

### Delegated admin relationship request

Both Microsoft partners and their customers can manage requests in delegated admin relationships.

| Use cases | APIs |
|--|--|
| Create a delegated admin relationship request to lock a relationship for customer approval or terminate an existing relationship. | [Create requests](../api/delegatedadminrelationship-post-requests.md) |
| Get a delegated admin relationship request by ID | [Get delegatedAdminRelationshipRequest](../api/delegatedadminrelationshiprequest-get.md) |
| List all delegated admin relationship requests for a given relationship | [List requests](../api/delegatedadminrelationship-list-requests.md) |


### Role assignments

| Use cases | APIs |
|--|--|
| Create new delegated admin access assignment for a delegated admin relationship | [Create accessAssignments](../api/delegatedadminrelationship-post-accessassignments.md) |
| List access assignments for a delegated admin relationship | [List accessAssignments](../api/delegatedadminrelationship-list-accessassignments.md) |
| Get a delegated admin relationship access assignment by ID | [Get delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-get.md) |
| Delete an access assignment of a delegated admin relationship | [Delete delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-delete.md) |
| Update role assignments for a delegated admin relationship access assignment | [Update delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-update.md) |

### Long-running operations

| Use cases | APIs |
|--|--|
| List all long running operations of a delegated admin relationship | [List operations](../api/delegatedadminrelationship-list-operations.md) |
| Get a long running operation of a delegated admin relationship | [Get delegatedAdminRelationshipOperation](../api/delegatedadminrelationshipoperation-get.md) |


### Delegated admin customers

| Use cases | APIs |
|--|--|
| List all delegated admin customers | [List delegatedAdminCustomers](../api/tenantrelationship-list-delegatedadmincustomers.md)|
| Get a single delegated admin customer by ID | [Get delegatedAdminCustomer](../api/delegatedadmincustomer-get.md) |
| Get service management details for a delegated admin customer | [List serviceManagementDetails](../api/delegatedadmincustomer-list-servicemanagementdetails.md) |

## Permissions

To manage delegated admin relationships, the calling principal must be assigned one of the following [Azure AD roles](/azure/active-directory/roles/permissions-reference).


## License requirements

//Any license requirements to use the DAP feature/APIs.