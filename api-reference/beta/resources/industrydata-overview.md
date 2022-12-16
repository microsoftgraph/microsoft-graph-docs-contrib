---
title: "Use industry data API as an extract, transform, and load (ETL) engine"
description: "Industry data APIs power the Microsoft School Data Sync (SDS) platform to help automate the process of importing and synchronizing organizations, users and users associations, and groups with Azure Active Directory (Azure AD) and Office 365 from student information systems (SIS) / student management systems (SMS)."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: conceptual
---

# Use industry data API as an extract, transform, and load (ETL) engine (preview)

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Industry data API is intended to be a multi-vertical, cross-industry platform. In the current release, it is highly tailored to the education industry, powering the [Microsoft School Data Sync](https://sds.microsoft.com) (SDS) platform to help automate the process of importing and synchronizing organizations, users and users associations, and groups with Azure Active Directory (Azure AD) and Office 365 from student information systems (SIS) / student management systems (SMS).

Additionally, industry data provides resources that you can use to retrieve statistics, after the data is processed, and assist with monitoring and troubleshooting.

## Overview

Industry data is an ETL (Extract-Transform-Load) engine. It can be visualized as a bow-tie represented by multiple incoming and outgoing flows. A single transformation process will combine and normalize the imported data to land in the Azure Data Lake of the tenant.

:::image type="content" source="../../../concepts/images/industryData-overview-1.png" alt-text="Graphic that shows industryData overview." lightbox="../../../concepts/images/industryData-overview-1.png":::

First, connect to the data of your institution. Define an inbound flow: Create **sourceSystemDefinition**, **dataConnector**, and **yearTimePeriodDefinition**. By default, your inbound flow will activate twice (2x) daily (called a _run_).

When the run starts, it connects to the **sourceSystemDefinition** and **dataConnector** of the inbound flow, and performs basic validation. Basic validation ensures that the connection is correct, for [OneRoster API](https://www.imsglobal.org/activity/onerosterlis) as a source, or the filenames and headers are correct for CSV as a source.

Next, the system transforms the data for import in preparation for advanced validation. As part of the data transformation, the data is associated based on the configured **yearTimePeriodDefinition**.

Additionally, the system stores the latest copy of the Azure AD of the tenant into the Azure Data Lake. The copy of the Azure AD assists with user matching between the **sourceSystemDefinition** and the Azure AD user object. At this stage, the match link is written only to the Azure Data Lake.

Next, the inbound flow performs advanced validation to determine data health. The validation focuses on identifying errors and/or warnings. Validation follows the concept of bringing in good data and keeping out bad data.

- Errors mean that a record didn't pass validation and was removed from further processing.
- Warnings mean that the value on an optional field of a record didn't pass. The value was removed from the record, however, the record was included for further processing.

Errors and warnings are used to help better understand data health.

For the data that passed validation, the process uses the configured **yearTimePeriodDefinition** to determine its association for longitudinal storage.

- As the data is stored the internal representation in the Azure Data Lake of the tenant, it identifies when it was first seen by industry data.
- For data linked with user organization, role association, and group association, it also identifies data as active in session based on the **yearTimePeriodDefinition**.
- In future runs, for the same inbound flow, **sourceSystemDefinition**, and **yearTimePeriodDefinition**, industry data identifies if the record is still seen.
- Based on the presence or absence of record, the record is kept active or marked as no longer active in session for the configured **yearTimePeriodDefinition**. This process determines the historical and longitudinal nature of the data between days, months, and years.

At the end of each run, **industryDataRunStatistics** are available to determine data health.

- Error and warnings related to **industryDataRunStatistics** will be produced to help provide an initial understanding of data health.
<!-- - When investigating data health, _industryData_ provides ability to download a log file that contains information based on the errors and warnings found to begin the data investigation process to correct the data in the source system.

After investigating and addressing any data errors and/or warnings, or are comfortable with the current state of the data health, then you can enable the scenarios with the data that is now in the Education data lake. When enabling a scenario to use this data, the scenario will create an outbound flow. Outbound flows are defined by Microsoft 365 provisioning, Insights & Analytics.

Microsoft 365 Provisioning outbound flows help with simplifying management of users and classes. Only active and matched users are included in the data that will be used to write the link to the AAD user object between the SIS/ SMS and their sections for groups and Teams classrooms.

Insights & Analytics help provide analysis for student progress and activity within their classes. Guided by this data, educators have the information they need to ensure that their students' emotional, social, and academic needs are being met. -->

For more information, see the sections School Data Sync, SDS prerequisites, and SDS core concepts of the [School Data Sync Overview](/schooldatasync/school-data-sync-overview.md) on the platform and architecture.

## Registration, permissions, and authorization

You can integrate industry data APIs with 3rd-party apps. To enable this integration, we recommend taking time to review the following articles.

- To explore the basics documentation, see [Authentication and authorization basics](/graph/auth/auth-concepts)
- To learn how to add and register an application, see [Register an application with the Microsoft identity platform](/graph/auth-register-app-v2)
- To read and write resources on behalf of a user, see [Get access on behalf of a user](/graph/auth-v2-user)
- For permissions via a consent process, see [Microsoft Graph permissions reference](/graph/permissions-reference)
- For steps to resolve common errors, see [Resolve Microsoft Graph authorization errors](/graph/resolve-auth-errors)

> **Note:** We have plans to expand out the scopes that are specific to industry data; however, until then the industry data APIs support the following existing Microsoft Graph permissions.

| Permissions                     | Type        | Description                                                                                                    |
| ------------------------------- | ----------- | -------------------------------------------------------------------------------------------------------------- |
| EduAdministration.Read          | Delegated   | Allows the app to read the state and settings of all Microsoft education apps on behalf of a signed-in user.   |
| EduAdministration.ReadWrite     | Delegated   | Allows the app to manage the state and settings of all Microsoft education apps on behalf of a signed-in user. |
| EduAdministration.Read.All      | Application | Read the state and settings of all Microsoft education apps.                                                   |
| EduAdministration.ReadWrite.All | Application | Manage the state and settings of all Microsoft education apps.                                                 |

## Concepts

Industry data APIs power School Data Sync which is a data transformation engine. It imports data sets in from external sources (SIS / SMS), transforms the data into a common data model, and writes the transformed data to various external services, like users and groups to Azure AD, and ability to create a team based group.

The following articles are to help with some basics that are specific to industry data APIs.

### Data domain

The **dataDomain** property defines the type of data being imported and determines the common data model format it will be stored in. Today, the only supported **dataDomain** is `educationRostering`.

### Reference Definitions

**referenceDefinition** represents an enumerated value. Each supported industry domain receives a distinct collection of default and customers can further customize them by overriding default values or adding new values to the tenant.

**referenceDefinitions** are used extensively throughout the system, both for configuration and validating data during transformation.

Each **referenceDefinition** uses a composite identifier of `{referenceType}-{code}`. The approach provides a more natural developer experience as most code values are defined by a standards body, and will be recognizable to developers in that industry domain.

[Retrieving referenceDefinition](resources/industrydata-referencedefinition.md)

### Reference values

When the API requires the developer to provide a **referenceDefinition**, it uses a type derived from **industryDataReferenceValue**.

The **industryDataReferenceValue** is designed to simplify selecting [referenceDefinition](resources/industrydata-referencedefinition.md) and to reduce developer configuration by only requiring the **code** value. The type of reference value is defined by the **industryDataReferenceValue** type, eliminating potential confusing as to which **referenceDefinition** a given property is expecting.

#### Example usage

The **userMatchingSettings.sourceIdentifier** property takes a **industryDataIdentifierTypeReferenceValue** type. This is a **industryDataReferenceValue** type bound to a `RefIdentifierType` reference definition.

Selecting the desired `RefIdentifierType` can be done either by providing a **code** value

```json
"sourceIdentifier": {
    "code": "username"
},
```

or binding the **industryDataReferenceDefinition** entity directly.

```json
"sourceIdentifier": {
    "value@odata.bind": "external/industryData/referenceDefinitions/RefIdentifierType-username"
},
```

### Role groups

Transformation of the data is often shaped by each individual user's role within an organization. These roles are defined as reference definitions. Given the number of potential roles, binding each role individual would result in a tedious user experience. [Role groups](resources/industrydata-rolegroup.md) are simply a collection of role values used to provide a convenient way to reference multiple reference definitions. The default role groups are _Students_ and _Staff_.

#### Get the staff role group

```json
{
  "@odata.type": "#microsoft.graph.industryDataRoleGroup",
  "id": "37a9781b-db61-4a3c-a3c1-8cba92c9998e",
  "displayName": "Staff",
  "roles": [
    { "code": "adjunct" },
    { "code": "administrator" },
    { "code": "advisor" },
    { "code": "affiliate" },
    { "code": "aide" },
    { "code": "alumni" },
    { "code": "assistant" }
  ]
}
```

## Scenarios

### Most common

The two most common scenarios are _Upload and Validate CSV Data_ and _Run Health and Monitoring_.

- [Upload and Validate CSV Data](resources/industrydata-azuredatalakeconnector.md)
- [Run Health and Monitoring](resources/industrydata-industrydatarun.md)

### Other scenarios

- [Create inbound flow](resources/industrydata-inboundflow.md)
- [Edit inbound flow](resources/industrydata-inboundflow.md)
