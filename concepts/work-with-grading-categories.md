---
title: "Work with grading categories"
description: "Learn how to use the education API in Microsoft Graph to manage grading categories."
ms.localizationpriority: medium
author: "v-rmanda"
ms.subservice: "education"
doc_type: conceptualPageType
ms.date: 11/07/2024
ms.topic: how-to
---

# Work with grading categories

This article describes how to use the education API in Microsoft Graph to set up and work with grading categories.

Teachers use grading categories to apply weights to assignments for student grades. For example, homework might account for 60% of a grade and tests account for 40% of a grade.

Assignments contribute to a grade based on their point values and the weight assigned to the grading category. For example, in a class with two assignments in a grading category that represents 50% of the grade, if the first assignment has 10 points, and the second has 40 points, the assignments contribute 5% and 20% to the total grade.

Grading categories are defined in the settings of a class. Every assignment that contributes to the final average grade must have a grading category applied. The weights of the grading categories for a class must add up to 100 during create, update, or delete operations. 

To work with grading categories in your app, you need to get the ID of the class and the assignment settings for that class. This article walks through the steps to create, add, update, and delete grading categories that are defined in the assignment settings. 

>**Note:** The education API in Microsoft Graph supports delegated (per user) permissions only.

## Get a class

A class is a group of students and teachers who share assignments and feedback. To work with grading categories, you first get the list of classes from your education tenant, then you identify the class for which you want to set grading categories on assignments.

To get a list of the classes in your tenant, see [List classes](/graph/api/educationclass-list).

### Request

The following example shows a request. 

```http
GET https://graph.microsoft.com/beta/education/classes
```

### Response

The following example shows the response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/classes?$skiptoken=RFNwdAoAAQAAAAAAAAAAFAAAAFc2PSDBhntHjvzu16e1Nf8BAAAAAAAAAAAAAAAAAAAXMS4yLjg0MC4xMTM1NTYuMS40LjIzMzEGAAAAAAAB1vIxCWc1gUyNlbXz2-SlPQEBAQAAAQEAAAA",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes?$select=classCode,course",
    "value": [
        {
            "id": "602ac15e-695c-4095-9efc-8f5baa860e33",
            "description": "English 6",
            "displayName": "English 6",
            "mailNickname": "Section_1657",
            "externalSource": "sis",
            "externalSourceDetail": "SIS",
            "externalId": "1657",
            "externalName": "English 6",
            "classCode": "5",
            "course": {
                "courseNumber": "ENG100",
                "displayName": "English 6",
                "externalId": "111"
            },
            "term": {
                "displayName": "2014-2015",
                "endDate": "2015-05-23",
                "externalId": "1288",
                "startDate": "2014-05-26"
            }
        }
    ]
}
```

## Get assignment settings

To add grading categories, you first need to get the assignment settings for the class, and identify which grading category needs to be applied for specific assignments.

To get the assignment settings for a class, see [Get assignment settings](/graph/api/educationassignmentsettings-get).

### Request

The following example shows a request. 

```http
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
```

### Response

The following example shows the response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/assignmentSettings?$select=submissionAnimationDisabled",
    "submissionAnimationDisabled": true,
    "gradingCategories@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
    "gradingCategories": [],
    "gradingSchemes@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingSchemes",
    "gradingSchemes": [
        {
            "id": "69911dea-bc5c-406a-8743-81d06225a3a1",
            "displayName": "New GradingScheme name 01",
            "hidePointsDuringGrading": false,
            "grades": []
        },
        {
            "id": "696290ba-1925-490e-a5d2-026bad0dbdc1",
            "displayName": "New name for Pass/Fail Scheme",
            "hidePointsDuringGrading": false,
            "grades": [
                {
                    "displayName": "Pass",
                    "minPercentage": 60,
                    "defaultPercentage": 100
                },
                {
                    "displayName": "Fail",
                    "minPercentage": 0,
                    "defaultPercentage": 0
                }
            ]
        }
    ]
}
```

## Create grading categories

Grading categories are used to weight assignments in the final class grade. This section shows how to create grading categories for your class.

### Request

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

{
  "gradingCategories": [
        {
            "displayName": "Lab",
            "percentageWeight": 10
        },
        {
            "displayName": "Homework",
            "percentageWeight": 80
        },
        {
            "displayName": "Test",
            "percentageWeight": 10
        }
    ]
}
```

### Response

The following example shows the response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
  "submissionAnimationDisabled": false,
  "gradingCategories@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
  "gradingCategories": [
      {
          "id": "8bfb6d7f-8634-4f3b-9b6a-b6b6ff663f01",
          "displayName": "Lab",
          "percentageWeight": 10
      },
      {
          "id": "6fd19981-588f-495c-91a8-712a645c95b7",
          "displayName": "Homework",
          "percentageWeight": 80
      },
      {
          "id": "54f637a5-2cef-4e48-a88e-028854ca8089",
          "displayName": "Test",
          "percentageWeight": 10
      }
  ]
}
```

## Add a grading category to an assignment

You weight an assignment's contribution to the final class grade by giving the assignment a grading category.

To add a grading category to an assignment, see [Add gradingCategory](/graph/api/educationassignment-post-gradingcategory).

### Request

The following example shows a request. 

```http
PUT https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/28992cce-fac0-4950-a836-5a524ded8599/gradingCategory/$ref
Content-type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/905b49a5-1639-49ab-9fbe-6a035def5ba3"
}
```

### Response

The following example shows the response.

```http
HTTP/1.1 204 No Content
```

## Update a grading category

You can change the details of a grading category, like its display name or weight. You can also delete one grading category and replace its contribution with an existing or new grading category. This section shows you how to update one or more grading categories.

To update a single granding category, see [Update single gradingCategory](/graph/api/educationgradingcategory-update).

### Example 1: Update a single grading category

### Request

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/a5ca6dda-f220-43ca-81e4-02396b99f398
Content-type: application/json

Request Body
{
    "displayName": "Test updated"
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories/$entity",
    "id": "a5ca6dda-f220-43ca-81e4-02396b99f398",
    "displayName": "Test updated",
    "percentageWeight": 30
}
```
### Example 2: Use a delta payload to create, update and/or delete grading categories

### Request

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

Request Body
{
    "gradingCategories@delta": [
        {
            "id": "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
            "displayName": "Changing this grading category's name"
        },
        {
            "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#gradingCategories/$deletedEntity",
            "id": "e2a86277-24f9-4f29-8196-8c83fc69d00d",
            "reason": "Deleting this grading category"
        },
        {
            "displayName": "Adding a new grading category 01",
            "percentageWeight": 30
        },
        {
            "displayName": "Adding a new grading category 02",
            "percentageWeight": 10
        }
    ]
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
    "submissionAnimationDisabled": false,
    "gradingCategories@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
    "gradingCategories": [
        {
            "id": "fb4a4009-3cc4-4dea-9991-e0a0763659e3",
            "displayName": "Homework",
            "percentageWeight": 30
        },
        {
            "id": "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
            "displayName": "Changing this grading category's name",
            "percentageWeight": 30
        },
        {
            "id": "d47d7a3f-44a1-47e1-8aec-68b028f64b2e",
            "displayName": "Adding a new grading category 01",
            "percentageWeight": 30
        },
        {
            "id": "021db844-0f03-4483-929d-1c1dbfd4fcb4",
            "displayName": "Adding a new grading category 02",
            "percentageWeight": 10
        }
    ]
}
```

## Delete grading categories

You can delete a grading category when you no longer need it for your assignment, or if you want to simplify your evaluation process. Deleting a grading category removes it from the assignment settings and the grading interface. 

To remove a grading category from the assignment settings and the grading interface, see [Remove gradingCategory](/graph/api/educationassignment-delete-gradingcategory).

> **Note:** Assignments in the deleted grading category retain their grades, but teachers can't assign the deleted grading category to other assignments.

### Request

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

Request Body
{
    "gradingCategories@delta": [
        {
            "id": "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
            "displayName": "Changing this grading category's name"
        },
        {
            "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#gradingCategories/$deletedEntity",
            "id": "e2a86277-24f9-4f29-8196-8c83fc69d00d",
            "reason": "Deleting this grading category"
        },
        {
            "displayName": "Adding a new grading category 01",
            "percentageWeight": 30
        },
        {
            "displayName": "Adding a new grading category 02",
            "percentageWeight": 10
        }
    ]
}
```

### Response

The following example shows the response.

```http
HTTP/1.1 204 No Content
```

## Error example: Delete a grading category by using delta payload

When you try to delete a grading category by using the delta payload without replacing it with another grading category to keep the total of all categories to 100, the call results in an error, as shown in the following example.

### Request

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

Request Body
{
    "gradingCategories@delta": [
        {
            "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#gradingCategories/$deletedEntity",
            "id": "426f653d-c383-4758-8790-4a1fe53116b1",
            "reason": "Deleting this grading category"
        }
    ]
}
```

### Response

The following example shows the response.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json
{
    "error": {
        "code": "badRequest",
        "message": "Bad request.",
        "innerError": {
            "code": "invalidRequestBody",
            "message": "GradingCategory weights must sum to 100.",
            "date": "2024-05-03T19:00:25",
            "request-id": "1d7a1230-f43e-4053-9313-f835d020772a",
            "client-request-id": "8248d438-b6b4-cee0-0121-a04cc08ba4d8"
        }
    }
}
```

## Related content

Use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test education APIs.
