ALTER TABLE auditlog MODIFY auditid DEFAULT NULL;
ALTER TABLE auditlog MODIFY userid DEFAULT NULL;
DELETE FROM auditlog WHERE NOT userid IN (SELECT userid FROM users);
ALTER TABLE auditlog ADD CONSTRAINT c_auditlog_1 FOREIGN KEY (userid) REFERENCES users (userid) ON DELETE CASCADE;
