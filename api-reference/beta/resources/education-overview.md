---
title: "Working with education APIs in Microsoft Graph"
description: "The education APIs in Microsoft Graph enhance Microsoft 365 resources and data with information that is relevant for education scenarios, including schools, students, teachers, classes, enrollments, and assignments."
ms.localizationpriority: medium
author: "mmast-msft"
ms.subservice: "education"
doc_type: conceptualPageType
ms.date: 08/01/2024
---

# Working with education APIs in Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The education APIs in Microsoft Graph enhance Microsoft 365 resources and data with information that is relevant for education scenarios, including schools, students, teachers, classes, enrollments, and assignments. This makes it easy for you to build solutions that integrate with educational resources.

The education APIs include rostering resources and assignments resources that you can use to interact with the rostering and assignment services in Microsoft Teams. You can use these resources to manage a school roster and automate student assignments.

## Authorization

To call the education APIs in Microsoft Graph, your app needs to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](/graph/auth/). Your app also needs the appropriate permissions. For more information, see [Education permissions](/graph/permissions-reference#education-permissions).

### App permissions to enable school IT admins to consent

To deploy apps that are integrated with the Education APIs in Microsoft Graph, school IT admins must first grant consent to the permissions requested by the app. This consent has to be granted only once, unless the permissions change. After the admin consents, the app is provisioned for all users in the tenant.

To trigger a consent dialog box, use the following REST call.

```http
GET https://login.microsoftonline.com/{tenant}/adminconsent?
client_id={clientId}&state=12345&redirect_uri={redirectUrl}
```

| Parameter   | Description                                                               |
| :---------- | :------------------------------------------------------------------------ |
| Tenant      | Tenant ID of the school. Use the full ID, which includes onmicrosoft.com. |
| clientId    | Client ID of the app.                                                     |
| redirectUrl | App redirect URL.                                                         |

## Rostering

The rostering APIs enable you to extract data from a school's Microsoft 365 tenant provisioned with [Microsoft School Data Sync](https://sds.microsoft.com/). These APIs provide access to information about schools, sections, teachers, students, and rosters. The APIs support both app-only (sync) scenarios, and app + user (interactive) scenarios. The APIs that support interactive scenarios enforce region-appropriate RBAC policies based on the user role calling the API. This provides a consistent API and minimal policy surface, regardless of the administrative configuration within tenants. In addition, the APIs also provide education-specific permissions to ensure that the right user has access to the data.

You can use the rostering APIs to enable an app user to know:

- Who I am
- What classes I attend or teach
- What I need to do and by when

The rostering APIs provide the following key resources:

- [educationSchool](educationschool.md) - Represents the school.
- [educationClass](educationclass.md) - Represents a class within a school.
- [educationTerm](educationterm.md) - Represents a designated portion of the academic year.
- [educationTeacher](educationteacher.md) - Represents a user with the primary role of 'Teacher'.
- [educationStudent](educationstudent.md) - Represents a user with the primary role of 'student'.

The rostering APIs support the following scenarios:

- [List all schools](../api/educationroot-list-schools.md)
- [List schools in which a class is taught](../api/educationclass-list-schools.md)
- [List schools for a user](../api/educationuser-list-schools.md)
- [Get all classes](../api/educationroot-list-classes.md)
- [Get classes in a school](../api/educationschool-list-classes.md)
- [List classes for a user](../api/educationuser-list-classes.md)
- [Add classes to a school](../api/educationschool-post-classes.md)
- [Get students and teachers for a class](../api/educationclass-list-members.md)
- [Add members to a class](../api/educationclass-post-members.md)
- [List teachers for a class](../api/educationclass-list-teachers.md)
- [Get users in a school](../api/educationschool-list-users.md)

<!-- Should you list delete scenarios here as well? -->

## Assignments

You can use the assignment-related education APIs to integrate with assignments in Microsoft Teams. Microsoft Teams in Microsoft 365 for Education is based on the same education APIs, and provides a use case for what you can do with the APIs. Your app can use these APIs to interact with assignments throughout the assignment lifecycle. 

The assignment APIs provide the following key resources:

- [educationAssignment](educationassignment.md) - The core object of the assignments API. Represents a task or unit of work assigned to a student or team member in a class as part of their study.
- [educationSubmission](educationsubmission.md) - Represents the resources that an individual (or group) submits for an assignment and the associated grade and feedback for that assignment.
- [educationResource](educationresource.md) - Represents the learning object that is being assigned or submitted. An **educationResource** is associated with an **educationAssignment** and/or an **educationSubmission**.

The assignment APIs support the following scenarios:

- [Create assignment](../api/educationclass-post-assignments.md)
- [Publish assignment](../api/educationassignment-publish.md)
- [Create assignment resource](../api/educationassignment-post-resources.md)
- [Create submission resource](../api/educationsubmission-post-resources.md)
- [Submit assignment](../api/educationsubmission-submit.md)
- [Unsubmit assignment](../api/educationsubmission-unsubmit.md)
- [Return grades and feedback to student](../api/educationsubmission-return.md)
- [Get assignment details](../api/educationuser-list-assignments.md)

The following are some common use cases for the assignment-related education APIs.

| Use case                    | Description                                                                                                         | See also                                                          |
| :-------------------------- | :------------------------------------------------------------------------------------------------------------------ | :---------------------------------------------------------------- |
| Create assignments          | An external system can create an assignment for the class and attach resources to the assignment.                   | [Create assignment](../api/educationassignment-post-resources.md) |
| Read assignment information | An analytics application can get information about assignments and student submissions, including dates and grades. | [Get assignment](../api/educationassignment-get.md)               |
| Track student submissions   | Your app can provide a teacher dashboard that shows how many submissions from students need to be graded.           | [Submission resource](educationsubmission.md)                     |

## Classwork

You can use Classwork as a one-stop shop to create and organize class resources, including assignments, OneNote Class Notebook pages, web links, files, and Teams channels. This means you no longer have to navigate multiple apps and platforms to find what you need. With Classwork, you can curate a view of content and resources that helps your students navigate the class and see everything in one place.

The Classwork API provides the following key resources:

- [educationModule](educationmodule.md) - A module is associated with a class. Represents a group of individual learning resources that are organized in a systematic way.
- [educationModuleResource](educationmoduleresource.md) - A wrapper object that stores the resources associated with a module. The student is unable to update this resource, which is a handout from the teacher to the student with nothing to be turned in.

The following lists show the scenarios supported by the Classwork API.

### Modules

The **educationModule** resource supports the following scenarios:

- [List modules](../api/educationclass-list-modules.md)
- [Create module](../api/educationclass-post-module.md)
- [Get module](../api/educationmodule-get.md)
- [Update module](../api/educationmodule-update.md)
- [Delete module](../api/educationmodule-delete.md)
- [Pin module](../api/educationmodule-pin.md)
- [Unpin module](../api/educationmodule-unpin.md)
- [Publish module](../api/educationmodule-publish.md)
- [Set up module resources folder](../api/educationmodule-setupresourcesfolder.md)

### Module resources

The **educationModuleResource** resource supports the following scenarios:

- [List module resources](../api/educationmodule-list-resources.md)
- [Create module resource](../api/educationmodule-post-resources.md)
- [Get module resource](../api/educationmoduleresource-get.md)
- [Update module resource](../api/educationmoduleresource-update.md)
- [Delete resource from module](../api/educationmoduleresource-delete.md)

### Common use cases

The following table shows some common use cases for the module-related education APIs.

| Use case                      | Description                                                                                                                                                                  | See also                                                           |
|:------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------|
| Create a module               | Only teachers in a class can create a module. Modules start in the draft state, which means that students don't see the modules until publication.                           | [Create educationModule](../api/educationclass-post-module.md)              |
| List modules                  | A teacher or an application with application permissions can see all module objects for the class. Students can only see published modules.                                  | [List class modules](../api/educationclass-list-modules.md)              |
| Publish a module              | Changes the state of an **educationModule** from its original `draft` status to the `published` status.                                                                      | [educationModule: publish](../api/educationmodule-publish.md)                |
| Create a resource in a module | Only teachers can perform this operation.                                                                                                                                    | [Create educationModuleResource](../api/educationmodule-post-resources.md) |
| List module resources         | Get all the **educationModuleResource** objects associated with a module. Only teachers, students, and applications with application permissions can perform this operation. | [List module resources](../api/educationmodule-list-resources.md)  |

## School data sync management

[School Data Sync](https://sds.microsoft.com/) helps to automate the process of importing and synchronizing roster data from student information systems with Microsoft Entra ID and Microsoft 365. You can use the school data sync management APIs in Microsoft Graph to set up synchronization from either a CSV file or a supported SIS API connector.

The school data sync management APIs support the following scenarios:

- [List synchronization profiles](../api/educationsynchronizationprofile-list.md)
- [Get synchronization profile](../api/educationsynchronizationprofile-get.md)
- [Create synchronization profile](../api/educationsynchronizationprofile-post.md)
- [Delete synchronization profile](../api/educationsynchronizationprofile-delete.md)
- [Pause an ongoing sync](../api/educationsynchronizationprofile-pause.md)
- [Resume a paused sync](../api/educationsynchronizationprofile-resume.md)
- [Reset a sync](../api/educationsynchronizationprofile-reset.md)
- [Start sync for uploaded files](../api/educationsynchronizationprofile-start.md)
- [Get an upload URL](../api/educationsynchronizationprofile-uploadurl.md)
- [Get status of a sync](../api/educationsynchronizationprofilestatus-get.md)
- [Get synchronization errors](../api/educationsynchronizationerrors-get.md)

## Next steps

Use the Microsoft Graph education APIs to build education solutions that access student assignments and school rosters. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
