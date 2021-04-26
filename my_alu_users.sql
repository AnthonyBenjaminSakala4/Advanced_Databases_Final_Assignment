/* Adding Users */

-- Creating Roles
CREATE ROLE 'alu_admin', 'alu_registrar', 'alu_dean';

-- Assign Privileges to Roles
GRANT ALL ON my_alu_db.* TO 'alu_admin';
GRANT SELECT ON my_alu_db.* TO 'alu_dean';
GRANT SELECT, INSERT, UPDATE, DELETE ON my_alu_db.* TO 'alu_registrar';
