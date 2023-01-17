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

:::image type="content" source="../../../concepts/images/industrydata-overview.png" alt-text="Graphic that shows industryData overview." lightbox="../../../concepts/images/industrydata-overview.png":::

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

## Concepts

Industry data APIs power School Data Sync which is a data transformation engine. It imports data sets in from external sources (SIS / SMS), transforms the data into a common data model, and writes the transformed data to various external services, like users and groups to Azure AD, and ability to create a team based group.

The following articles are to help with some basics that are specific to industry data APIs.

### Data domain

The **dataDomain** property defines the type of data being imported and determines the common data model format it will be stored in. Today, the only supported **dataDomain** is `educationRostering`.

### Reference Definitions

A [referenceDefinition](industrydata-referencedefinition.md) represents an enumerated value. Each supported industry domain receives a distinct collection of definitions. **referenceDefinition** resources are used extensively throughout the system, both for configuration and transformation, where the potential values are specific to a given industry. Each **referenceDefinition** uses a composite identifier of `{referenceType}-{code}` to provide a consistent experience across customer tenants.

#### Reference values

Types based on [referenceValue](industrydata-referencevalue.md) provide a simplified developer experience for binding [referenceDefinition](industrydata-referencedefinition.md) resources. Each **referenceValue** type is bound to a single reference type, allowing developers to provide only the **code** portion of the referencing definition as a simple string and eliminating potential confusion as to which type of **referenceDefinition** a given property is expecting.

#### Example usage

The **userMatchingSettings.sourceIdentifier** property takes a [identifierTypeReferenceValue](industrydata-identifierTypeReferenceValue.md) type which binds to the `RefIdentifierType` **referenceType**.

```json
"sourceIdentifier": {
    "code": "username"
},
```

A **referenceDefinition** may also be bound directly using via the **value** property

```json
"sourceIdentifier": {
    "value@odata.bind": "external/industryData/referenceDefinitions/RefIdentifierType-username"
},
```

### Role groups

Transformation of the data is often shaped by each individual user's role within an organization. These roles are defined as reference definitions. Given the number of potential roles, binding each role individual would result in a tedious user experience. [Role groups](industrydata-rolegroup.md) are simply a collection of `RefRole` codes.

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

### Data Connectors

A [industryDataConnector](industrydata-industrydataconnector.md) acts as a bridge between a [sourceSystemDefinition](industrydata-sourcesystemdefinition.md) and [inboundFlow](industrydata-inboundflow.md). It is responsible for acquiring data from an external source and providing the data to inbound data flows.

#### Uploading and Validating CSV Data

For more information:

- [Data Ingestion with SDS v2.1 CSV](schooldatasync/Data-Ingestion-with-SDS-v2.1-CSV.md)
- [SDS V2.1 CSV file format](schooldatasync/sds-v2.1-csv-file-format.md)
  - File names and column headers are case-sensitive
  - CSV files must be in UTF-8 format
  - We don't accept line breaks in incoming data.
  - To review and download sample set of SDS V2.1 CSV files, [see the SDS GitHub Repository](https://github.com/OfficeDev/O365-EDU-Tools/tree/master/CSV%20Samples).

> [!IMPORTANT]
> The [industryDataConnector](industrydata-industrydataconnector.md) does not accept delta changes so each upload session must contain the complete data set. Supplying only partial or delta data will result in any missing records being transitioned to an inactive state.

##### Request an Upload Session

The [azureDataLakeConnector](industrydata-azuredatalakeconnector.md) uses CSV files uploaded to a secure container. This container lives within the context of a single [fileUploadSession](industrydata-fileuploadsession.md) and is automatically destroyed after data validation or the **fileUploadSession** expires.

The current **fileUploadSession** is retrieved from an **azureDataLakeConnector** via the [getUploadSession](../api/industrydata-azuredatalakeconnector-getuploadsession.md). The **getUploadSession** function returns the SAS URL for uploading the CSV files.

##### Validating Uploaded Files

Once all CSV data has been successfully uploaded, the data must be validated before any inbound data flows can being processing the data. This is accomplished by calling the [validate](../api/industrydata-industrydataconnector-validate.md) action of the **azureDataLakeConnector**. This will finalize the upload session and validate that all required files were provided and properly formed. Once validated, the data becomes available for processing by inbound data files.

The **validate** action is a long-running [fileValidateOperation](industrydata-fileValidateOperation.md). A link to the **fileValidateOperation** is returned in the `Location` header of the **validate** response. The **fileValidateOperation** provides the current status and final validation results.
