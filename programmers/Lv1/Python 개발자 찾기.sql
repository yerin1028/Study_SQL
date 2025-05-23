-- DEVELOPER_INFOS 테이블에서 Python 스킬을 가진 개발자의 정보를 조회 
-- Python 스킬을 가진 개발자의 ID, 이메일, 이름, 성을 조회하는 SQL 문을 작성
-- 결과는 ID를 기준으로 오름차순 정렬

SELECT DEVELOPER_INFOS.ID, DEVELOPER_INFOS.EMAIL, DEVELOPER_INFOS.FIRST_NAME, DEVELOPER_INFOS.LAST_NAME
FROM DEVELOPER_INFOS
WHERE DEVELOPER_INFOS.SKILL_1 = 'Python'
OR DEVELOPER_INFOS.SKILL_2 = 'Python'
OR DEVELOPER_INFOS.SKILL_3 = 'Python'
ORDER BY DEVELOPER_INFOS.ID
;