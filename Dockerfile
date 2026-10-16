# 1. Java 21 버전을 지원하는 경량화된 베이스 이미지 사용
FROM eclipse-temurin:21-jdk-alpine

# 2. 컨테이너 내부에 작업 디렉토리 생성
WORKDIR /app

# 3. 호스트(내 컴퓨터)에서 빌드된 jar 파일을 컨테이너 내부로 복사
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

# 4. 컨테이너가 실행될 때 작동할 명령어 지정
ENTRYPOINT ["java", "-jar", "app.jar"]