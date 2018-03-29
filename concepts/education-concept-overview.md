# Microsoft Graph education API overview

# Microsoft EDU Graph Overview

The education APIs in Microsoft Graph enhance Office 365 resources and data with information that is relevant for education scenarios, including schools, students, teachers, classes, enrollments and assignments information. This makes it easier for application developers to build solutions that integrate with educational resources that are globally available, in a secure and compliant way,  at no extra cost to the school or to the app developer. 

Here is an overview of EDU Endpoints in Microsoft Graph

![EDU Graph Overview](images/EDUGraph.PNG)

# Why integrate with EDU Graph?

## Build applications that are aware of class Roster

The rostering APIs enable you as the app developer to extract data from a school's Office 365 tenant provisioned with [Microsoft School Data Sync](https://sds.microsoft.com/). These APIs provide access to information about schools, sections, teachers, students, and rosters. 

The APIs support both app-only (sync) scenarios, and app + user (interactive) scenarios. The APIs that support interactive scenarios enforce region-appropriate RBAC policies based on the user role calling the API. This provides a consistent API and minimal policy surface, regardless of the administrative configuration within tenants. In addition, the APIs also provide education-specific permissions to ensure that the right user has access to the data.

Here are examples of a few scenarios enabled by rostering APIs :

- What classes I teach 

- Who are the students in my class

- What I need to do and by when

##  Enable your teachers to create assignments at the click of a buttion using Assignments APIs (preview)
Microsoft Teams in EDU is a digital hub that brings conversations, content, and apps together in one place for classrooms. Among other capabilities, Teams provides an Assignment service Assignments that provides seamless assignment creation, submission and grading experience. 

![Teams Assignments](images/AssignmentsInTeams.PNG)

With Assigment APIs your app can interact with the assignment service outside of Teams. Here are examples of a few scenarios enabled by Assignments API:

- Create assignment into Teams from a 3rd party app or website.
- Read assignment meta data information.
- Read submission information.

## Enable school ITs to manage Idenity and Roster sync using School Data Sync Management (preview)

[School Data Sync](https://sds.microsoft.com/) helps to automate the process of importing and synchronizing student identity and roster data from student information systems with Azure Active Directory (Azure AD) and Office 365. Once the information is synchronized, app developers can use the Roster APIs to read the Roster information into the applications . You can use the school data sync management APIs in Microsoft Graph to set up synchronization from either a CSV file or a supported SIS API connector.

School Data Sync Management APIs support end to end scenarios for managing sync. Here are a few examples:

- Create a synchronization profile
- Pause a sync
- Reset Sync


## Next Steps:

### 1. Learn more about the reference APIs:

- Learn more about Roster APIs : [Roster API reference](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/education-overview)

- Learn more about Assignments APIs (preview) : [Assignment API reference](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/educationassignment)

- Learn more about School Data Sync Management APIs (preview) : [SDS Management API reference](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/educationsynchronizationprofile)


### 2. Try out the APIs in Graph Explorer:

- Try out the EDU Graph APIs in Graph Explorer : [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer)


### 3. Get started using the samples:

Check out end to end sample for Single Sign On, Roster Data integration and Assignments Integration using the samples below:

- [Overview of the EDUGraph API solution](https://github.com/OfficeDev/O365-EDU-AspNetMVC-Samples#understand-the-code)

- [.NET Sample for SSO & Rostering](https://github.com/OfficeDev/O365-EDU-AspNetMVC-Samples
    )

- [Angular Node Sample for SSO & Rostering](https://github.com/OfficeDev/O365-EDU-AngularNodeJS-Samples)
    
- [Python Sample for SSO & Rostering](https://github.com/OfficeDev/O365-EDU-Python-Samples)

- [PHP Sample for for SSO & Rostering](https://github.com/OfficeDev/O365-EDU-PHP-Samples)

- [Sample for profile management APIs](https://github.com/OfficeDev/O365-EDU-SDS-AspNetMVC-Samples) 



 

