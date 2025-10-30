# KIISE 학술대회 논문 Typst 템플릿

한국정보과학회(KIISE) 학술대회 논문 작성을 위한 Typst 템플릿입니다.

## 📋 개요

이 템플릿은 LaTeX 기반의 [KIISE 공식 논문작성 양식](https://ko.overleaf.com/latex/templates/hangugjeongbogwahaghoe-hagsuldaehoe-nonmunjagseong-yangsig/nhgcmdbskkrv)을 Typst로 변환한 것입니다. Typst의 간결한 문법을 활용하여 보다 쉽게 학술 논문을 작성할 수 있도록 설계되었습니다.

**주요 특징:**
- ✅ 한글/영문 이중 제목 및 저자 정보 지원
- ✅ 초록(Abstract) 섹션 포함
- ✅ 자동 페이지 번호 매김
- ✅ 전문적인 학술 논문 포맷
- ✅ 참고문헌 및 부록 섹션

---

## 📦 템플릿 구조

### 파일 구성
```
kiise.typ                           # 컴포넌트 및 스타일 정의
kiise_demo.typ                      # 데모 및 사용 예제
kiise_conference_template_README.md # 이 파일
```

### 파일 설명

**kiise.typ** - 컴포넌트 정의 파일
- 문서 메타데이터 설정
- 폰트 및 페이지 설정
- 재사용 가능한 컴포넌트 함수 정의
  - `paper-title()`: 국문/영문 제목 표시
  - `author-info()`: 저자 정보 표시
  - `abstract-section()`: 초록 섹션 생성
  - `bibliography-section`: 참고문헌 섹션 생성
- 제목 및 문단 스타일 규칙

**kiise_demo.typ** - 데모 문서
- `kiise.typ`을 import하여 사용
- 실제 논문 작성 예제
- 각 섹션의 샘플 콘텐츠 포함

**파일 분리의 이점:**
- ✅ `kiise.typ`을 여러 문서에서 재사용 가능
- ✅ 컴포넌트 수정 시 중앙 관리 가능
- ✅ `kiise_demo.typ`은 변경 없이 템플릿 기본값 유지
- ✅ 코드 가독성 및 유지보수성 향상

### 문서 구성 요소

템플릿에는 다음과 같은 섹션이 포함되어 있습니다:

1. **제목 페이지** - 국문/영문 제목, 저자 정보, 소속, 이메일
2. **초록** - 연구 개요 및 주요 내용 요약
3. **본문 섹션**
   - 서론 (Introduction)
   - 관련 연구 (Related Work)
   - 배경 지식 (Preliminaries)
   - 제안 방법 (Proposed Method)
   - 실험 (Experiments)
   - 결론 (Conclusion)
4. **참고문헌** (Bibliography)
5. **부록** (Appendix)

---

## 🔧 컴포넌트 상세 설명

### 1. 문서 메타데이터
```typst
#set document(
  title: "한국정보과학회 학술대회 논문 템플릿",
  author: "Authors",
)
```
- 문서의 제목과 저자를 설정합니다
- PDF 메타데이터에 반영됩니다

### 2. 폰트 설정
```typst
#set text(font: ("New Computer Modern", "Noto Sans CJK KR"), lang: "ko")
```
- 영문: New Computer Modern
- 한글: Noto Sans CJK KR
- 언어: 한국어로 설정

### 3. 페이지 설정
```typst
#set page(
  paper: "a4",
  margin: (top: 20mm, bottom: 20mm, left: 20mm, right: 20mm),
  numbering: "1",
  number-align: center,
)
```
- 용지: A4
- 여백: 위/아래/좌/우 각 20mm
- 페이지 번호: 중앙 정렬

### 4. `paper-title()` 함수
```typst
#let paper-title(kor-title, eng-title) = { ... }
```
- **용도**: 국문과 영문 제목을 표시
- **파라미터**:
  - `kor-title`: 국문 제목
  - `eng-title`: 영문 제목
- **스타일**: 국문(14pt, 굵음) / 영문(12pt, 이탤릭)

### 5. `author-info()` 함수
```typst
#let author-info(kor-authors, kor-affiliation, eng-authors, eng-affiliation, emails) = { ... }
```
- **용도**: 저자 정보 및 소속을 표시
- **파라미터**:
  - `kor-authors`: 국문 저자명 (예: "저자1 국문이름°, 저자2 국문이름")
  - `kor-affiliation`: 국문 소속
  - `eng-authors`: 영문 저자명
  - `eng-affiliation`: 영문 소속
  - `emails`: 이메일 주소
- **스타일**: 중앙 정렬, 국문(11pt) / 영문(11pt, 이탤릭)

### 6. `abstract-section()` 함수
```typst
#let abstract-section(content) = { ... }
```
- **용도**: 초록 섹션을 생성
- **파라미터**: `content` - 초록 내용
- **스타일**: "초록" 제목(11pt, 굵음) + 내용(10pt)

### 7. 제목 스타일 규칙
```typst
#show heading.where(level: 1): it => { ... }
#show heading.where(level: 2): it => { ... }
```
- **1단계 제목** (= 제목): 12pt, 굵음
- **2단계 제목** (== 제목): 11pt, 굵음

### 8. 참고문헌 섹션
```typst
#let bibliography-section = { ... }
```
- 참고문헌 제목을 표시합니다
- 스타일: 11pt, 굵음

---

## 📝 사용 방법

### 기본 템플릿 적용

#### 방법 1: 데모 파일 수정 (가장 간단함)

`kiise_demo.typ` 파일을 직접 수정하여 사용합니다:

1. **제목과 저자 정보 수정**

```typst
#paper-title(
  "당신의 국문 제목",
  "Your English Title"
)

#author-info(
  "저자1 이름°, 저자2 이름",           // 국문 저자명
  "소속 대학교 학과",                   // 국문 소속
  "First Author Name, Second Author",   // 영문 저자명
  "University Department",               // 영문 소속
  "{author1, author2}@university.ac.kr"  // 이메일
)
```

2. **초록 작성**

```typst
#abstract-section[
  당신의 연구 초록을 여기에 입력하세요. 
  연구의 주요 내용, 방법론, 결과를 100-200단어로 요약합니다.
]
```

3. **본문 작성**

각 섹션의 내용을 수정합니다:

```typst
= 서론

서론 내용을 작성합니다...

= 관련 연구

관련 연구를 설명합니다...
```

4. **참고문헌 작성**

```typst
#bibliography-section

+ "저자명, \"논문 제목\", 학술지명, 2024"
+ "저자명, \"논문 제목\", 학술지명, 2024"
+ "저자명, \"논문 제목\", 학술지명, 2024"
```

5. **부록 작성** (선택사항)

```typst
= 부록

부록 내용을 입력합니다...
```

#### 방법 2: 새 문서에 컴포넌트 적용 (고급)

기존 문서나 다른 프로젝트에서 `kiise.typ`의 컴포넌트를 재사용하려면:

1. 새로운 `.typ` 파일을 생성합니다 (예: `my_paper.typ`)
2. `kiise.typ`을 import합니다:

```typst
#import "kiise.typ": *

// 이제 paper-title, author-info 등을 사용할 수 있습니다
```

3. 다른 스타일 설정을 필요에 따라 추가합니다

---

## ⚙️ 커스터마이징 가이드

### 폰트 변경

한글 폰트를 변경하려면:

```typst
#set text(font: ("New Computer Modern", "당신의 한글폰트명"), lang: "ko")
```

사용 가능한 한글 폰트 예시:
- "Noto Sans CJK KR" (기본값)
- "Noto Serif CJK KR"
- "D2Coding"

### 여백 조정

페이지 여백을 변경하려면:

```typst
#set page(
  paper: "a4",
  margin: (top: 30mm, bottom: 30mm, left: 25mm, right: 25mm),
  numbering: "1",
  number-align: center,
)
```

### 제목 크기 조정

1단계 제목 크기를 변경하려면:

```typst
#show heading.where(level: 1): it => {
  v(0.5em)
  text(size: 14pt, weight: "bold")[#it.body]  // 14pt로 변경
  v(0.3em)
}
```

### 색상 추가

제목에 색상을 적용하려면:

```typst
#show heading.where(level: 1): it => {
  v(0.5em)
  text(size: 12pt, weight: "bold", fill: rgb("#1f77b4"))[#it.body]
  v(0.3em)
}
```

### 번호 매김 형식 변경

페이지 번호 형식을 변경하려면:

```typst
#set page(
  numbering: "1 / 1",  // "현재 페이지 / 전체 페이지" 형식
)
```

---

## 📚 고급 기능

### 이미지 삽입

```typst
= 실험 결과

#figure(
  image("path/to/image.png", width: 80%),
  caption: [실험 결과 그래프],
)
```

### 테이블 작성

```typst
#table(
  columns: 3,
  [방법], [정확도], [소요시간],
  [Method A], [92.3%], [2.1s],
  [Method B], [94.5%], [2.8s],
)
```

### 수식 작성

```typst
수식은 다음과 같습니다: $ x = frac(-b plus.minus sqrt(b^2 - 4a c), 2a) $

또는 별도 줄에:

$ integral_0^infinity e^(-x^2) d x = frac(sqrt(pi), 2) $
```

### 인용 및 참고

```typst
연구에 따르면[1] 이러한 방법이 효과적입니다.
```

---

## 📖 추가 리소스

- [Typst 공식 문서](https://typst.app/docs/)
- [KIISE 학술대회 공식 페이지](https://www.kiise.or.kr/)
- [원본 LaTeX 템플릿](https://ko.overleaf.com/latex/templates/hangugjeongbogwahaghoe-hagsuldaehoe-nonmunjagseong-yangsig/nhgcmdbskkrv)

---

## 🐛 문제 해결

### 한글이 제대로 표시되지 않는 경우

- Noto Sans CJK KR 폰트가 시스템에 설치되어 있는지 확인하세요
- 다른 한글 폰트로 변경해보세요 (위의 폰트 변경 가이드 참고)

### 페이지 레이아웃이 어색한 경우

- 여백 설정을 조정하세요
- 이미지나 테이블의 크기를 조정하세요
- `#pagebreak()`를 사용하여 페이지를 수동으로 나누세요

### 참고문헌 형식이 일관되지 않는 경우

- IEEE 스타일 또는 APA 스타일 등 일관된 형식을 사용하세요
- 각 항목이 저자명, 제목, 출판물, 연도를 포함하도록 하세요

---

## 📄 라이선스

이 템플릿은 원본 LaTeX 템플릿의 라이선스를 따릅니다: Creative Commons CC BY 4.0

원본 출처:
- 작성자: Jinhong Jung (Soongsil University, DMLAB)
- 기반: http://ids.snu.ac.kr/wiki/LaTeX_template_for_KCC
- 참고: https://github.com/leejaymin/Kiise-Latex-template

---

## 📞 피드백 및 개선

이 템플릿에 대한 제안이나 개선사항이 있으면 이슈를 올려주세요.

**마지막 업데이트**: 2025년 10월 30일
