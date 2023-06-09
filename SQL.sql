-- 관계형 데이터 베이스

-- SQL
-- Database에 질문을 날린다.

-- 기본키 : 중복을 허용하지 않고, NULL값이 올 수 없다.

-- dbo 라는 데이터 베이스에서 players 테이블에 모든걸 출력해주세요.

-- FROM.. 어떤 Table에서 
-- WHERE .. 어떠한 조건으로
-- SELECT..속성을 선택하겠다.
-- ORDER BY... 정렬 ASC(오름차순), DESC(내림차순)
-- 읽는 순서는FROM부터..SELECT 순으로

-- players 테이블에서 birthYear가 1934인 사람의 모든 정보 추출 ... -> WHERE if문과 비슷함.

SELECT *
FROM players
WHERE (birthYear > 1934 OR birthCountry = 'USA') AND deathYear IS NOT NULL


SELECT nameFirst as 성, nameLast as 이름
FROM dbo.players

-- players 테이블에서 birthCountry가 USA이면서 1869년에 태어난 사람의 lahmanID, playersID, 성과 이름을 추출해주세요
-- 이 정보를 birthMonth 순으로 보여주세요. 단, birthMonth가  NULL이 아닌 애들만
SELECT *
FROM dbo.players
WHERE (players.birthCountry = 'USA' AND players.birthYear = 1869 AND players.birthMonth IS NOT NULL)
ORDER BY players.birthMonth DESC
