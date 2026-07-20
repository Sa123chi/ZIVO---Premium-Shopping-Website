# Zivo Database Design

## Database Tables
1. Roles
2. Users
3. Categories
4. SubCategories
5. Brands
6. Products
7. ProductImages
8. Inventory
9. Cart
10. CartItems
11. Wishlist
12. Orders
13. OrderItems
14. Payments
15. Reviews
16. Addresses
17. Coupons
18. Notifications

## Roles Table
Purpose:
Stores the different roles available in the system.

Columns:
| Column | Data Type | Description |
|---------|-----------|-------------|
| RoleID | INT | Unique ID of the role |
| RoleName | VARCHAR(50) | Name of the role |

Example Data:
1 - Admin
2 - Seller
3 - Customer

## Users Table

Purpose:
Stores all registered users.

Columns:
| Column | Data Type | Description |
|---------|-----------|-------------|
| UserID  | INT       | Unique user ID |
| RoleID  | INT       | Links to Roles table |
| FirstName | VARCHAR(50) | First name |
| LastName | VARCHAR(50) | Last name |
| Email | VARCHAR(100) | User email |
| PasswordHash | VARCHAR(255) | Encrypted password |
| Phone | VARCHAR(15) | Phone number |
| CreatedAt | DATETIME | Account creation time |

## Primary Key
A Primary Key is a column that uniquely identifies each row in a table.

Example:
UserID
Every user has a different UserID.
No two users can have the same UserID.

## Foreign Key
A Foreign Key connects one table to another.

Example:
The Users table contains RoleID.
RoleID refers to the Roles table.

## One-to-Many Relationship
One record in one table can be connected to many records in another table.

Example:
One Category can contain many SubCategories.