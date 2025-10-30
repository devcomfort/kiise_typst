# KIISE 학술대회 논문 Typst 템플릿

한국정보과학회(KIISE) 학술대회 논문 작성을 위한 현대적인 Typst 템플릿입니다.

## 🎯 소개

이 프로젝트는 [한국정보과학회 공식 LaTeX 템플릿](https://ko.overleaf.com/latex/templates/hangugjeongbogwahaghoe-hagsuldaehoe-nonmunjagseong-yangsig/nhgcmdbskkrv)을 [Typst](https://typst.app/)로 변환하여 제공합니다. Typst의 간결하고 직관적인 문법을 활용하여 LaTeX보다 더 쉽게 전문적인 학술 논문을 작성할 수 있습니다.

### 🌟 주요 특징

- ✅ **한글/영문 이중 지원**: 국문 및 영문 제목, 저자, 소속 정보 표시
- ✅ **프로페셔널 포맷**: KIISE 공식 논문작성 양식 준수
- ✅ **초록 섹션**: 연구 개요 요약
- ✅ **자동 페이지 번호**: 중앙 정렬 페이지 번호 매김
- ✅ **표준 섹션**: 서론, 관련 연구, 배경, 제안 방법, 실험, 결론
- ✅ **참고문헌 및 부록**: 완전한 학술 논문 구조
- ✅ **컴포넌트 기반 설계**: 재사용 가능한 모듈 구조

---

## 📦 파일 구조

```
kiise_typst/
├── README.md                          # 이 파일
├── kiise.typ                          # 컴포넌트 및 스타일 정의
├── kiise_demo.typ                     # 데모 및 사용 예제
└── kiise_conference_template_README.md # 상세 기술 문서
```

### 파일별 설명

#### `kiise.typ` - 컴포넌트 라이브러리
논문 작성에 필요한 모든 구성 요소와 스타일을 정의하는 핵심 파일입니다.

**포함 내용:**
- 문서 메타데이터 설정 (제목, 저자)
- 폰트 설정 (New Computer Modern, Noto Sans CJK KR)
- 페이지 설정 (A4, 20mm 여백)
- 재사용 가능한 컴포넌트 함수:
  - `paper-title()`: 국문/영문 제목 표시
  - `author-info()`: 저자 정보 및 소속 표시
  - `abstract-section()`: 초록 섹션 생성
  - `bibliography-section`: 참고문헌 섹션 생성
- 제목 및 문단 스타일 규칙

#### `kiise_demo.typ` - 데모 문서
실제 논문 작성의 완전한 예제를 제공합니다.

**포함 내용:**
- `kiise.typ`을 import하여 모든 컴포넌트 활용
- 각 섹션별 샘플 콘텐츠
- 페이지 분할 및 구조 예시
- 참고문헌 및 부록 작성 예제

**파일 분리의 이점:**
- `kiise.typ`을 여러 문서에서 재사용 가능
- 컴포넌트 수정 시 중앙 관리 가능
- 데모 파일은 변경 없이 템플릿 기본값 유지
- 코드 가독성 및 유지보수성 향상

---

## 📋 문서 구성

### 표준 섹션 구조

1. **제목 페이지**
   - 국문 제목 (14pt, 굵음)
   - 영문 제목 (12pt, 이탤릭)
   - 국문 저자 및 소속 (11pt)
   - 영문 저자 및 소속 (11pt, 이탤릭)
   - 이메일 주소 (10pt, 이탤릭)

2. **초록** (Abstract)
   - 연구 개요 및 주요 내용 요약
   - 추천 길이: 100-200단어

3. **본문 섹션**
   - 1. 서론 (Introduction)
   - 2. 관련 연구 (Related Work)
   - 3. 배경 지식 (Preliminaries)
   - 4. 제안 방법 (Proposed Method)
   - 5. 실험 (Experiments)
   - 6. 결론 (Conclusion)

4. **참고문헌** (Bibliography)
   - IEEE 스타일 권장
   - 모든 인용 출처 포함

5. **부록** (Appendix)
   - 추가 상세 정보
   - 부수 수식 및 증명
   - 자세한 실험 결과

---

## 🚀 빠른 시작

### 방법 1: 데모 파일 수정 (추천)

가장 간단한 방법으로 `kiise_demo.typ` 파일을 직접 수정합니다.

#### 1단계: 제목과 저자 정보 수정

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

**주의사항:**
- 주저자 이름 뒤에 `°` 기호 추가
- 여러 저자는 쉼표로 구분

#### 2단계: 초록 작성

```typst
#abstract-section[
  당신의 연구 초록을 여기에 입력하세요. 
  연구의 주요 내용, 방법론, 결과를 100-200단어로 요약합니다.
]
```

#### 3단계: 본문 작성

```typst
= 서론

서론 내용을 작성합니다. 연구의 배경, 동기, 목표를 설명합니다.

= 관련 연구

관련 연구를 설명합니다. 기존 연구와 현재 연구의 차별점을 명확히 합니다.
```

#### 4단계: 참고문헌 작성

```typst
#bibliography-section

+ "저자명, \"논문 제목\", 학술지명, 2024"
+ "저자명, \"논문 제목\", 학술지명, 2024"
+ "저자명, \"논문 제목\", 학술지명, 2024"
```

**참고문헌 형식 (IEEE 스타일 권장):**
```
+ "Firstname Lastname, \"Paper Title\", Journal Name, vol. XX, no. X, pp. XXX-XXX, 2024"
```

#### 5단계: 부록 작성 (선택사항)

```typst
= 부록

부록 제목이나 설명

== 부록 세부 사항

자세한 증명이나 추가 결과를 포함합니다.
```

### 방법 2: 새 문서에 컴포넌트 적용 (고급)

다른 프로젝트에서 이 템플릿을 재사용하려면:

```typst
#import "kiise.typ": *

// 이제 paper-title, author-info 등을 사용할 수 있습니다

#paper-title(
  "제목",
  "Title"
)

// ... 나머지 콘텐츠
```

---

## ⚙️ 커스터마이징

### 폰트 변경

기본 폰트를 다른 한글 폰트로 변경:

```typst
#set text(font: ("New Computer Modern", "Noto Serif CJK KR"), lang: "ko")
```

**추천 한글 폰트:**
- `"Noto Sans CJK KR"` (기본, 산세리프)
- `"Noto Serif CJK KR"` (세리프)
- `"D2Coding"` (고정폭)

### 페이지 여백 조정

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
  text(size: 14pt, weight: "bold")[#it.body]
  v(0.3em)
}
```

### 제목에 색상 추가

```typst
#show heading.where(level: 1): it => {
  v(0.5em)
  text(size: 12pt, weight: "bold", fill: rgb("#1f77b4"))[#it.body]
  v(0.3em)
}
```

### 페이지 번호 형식 변경

현재 페이지/전체 페이지 형식:

```typst
#set page(
  numbering: "1 / 1",
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
= 성능 비교

#table(
  columns: 3,
  [방법], [정확도], [소요시간],
  [Method A], [92.3%], [2.1s],
  [Method B], [94.5%], [2.8s],
)
```

### 수식 작성

인라인 수식:
```typst
수식은 다음과 같습니다: $ x = frac(-b plus.minus sqrt(b^2 - 4a c), 2a) $
```

별도 줄 수식:
```typst
$ integral_0^infinity e^(-x^2) d x = frac(sqrt(pi), 2) $
```

### 인용 및 참고

```typst
연구에 따르면[1] 이러한 방법이 효과적입니다.
```

---

## 🐛 문제 해결

### 한글이 제대로 표시되지 않는 경우

**해결책:**
1. Noto Sans CJK KR 폰트가 시스템에 설치되어 있는지 확인
2. 다른 한글 폰트로 변경해보기 (위의 폰트 변경 가이드 참고)
3. Typst 컴파일러 업데이트

### 페이지 레이아웃이 어색한 경우

**해결책:**
1. 여백 설정 조정
2. 이미지나 테이블의 크기 조정
3. `#pagebreak()`를 사용하여 페이지 수동 분할

### 참고문헌 형식이 일관되지 않는 경우

**해결책:**
1. IEEE, APA 등 일관된 형식 선택
2. 모든 항목에 저자명, 제목, 출판물, 연도 포함 확인

---

## 📖 추가 리소스

### 공식 문서
- [Typst 공식 문서](https://typst.app/docs/)
- [KIISE 학술대회 공식 페이지](https://www.kiise.or.kr/)

### 원본 템플릿 및 참조
- [Overleaf에서 보기](https://ko.overleaf.com/latex/templates/hangugjeongbogwahaghoe-hagsuldaehoe-nonmunjagseong-yangsig/nhgcmdbskkrv)
- [SNU LaTeX Template](http://ids.snu.ac.kr/wiki/LaTeX_template_for_KCC)
- [GitHub - KIISE LaTeX Template](https://github.com/leejaymin/Kiise-Latex-template)

### 상세 문서
자세한 기술 문서는 [`kiise_conference_template_README.md`](./kiise_conference_template_README.md)를 참고하세요.

---

## 📄 라이선스 및 출처

이 템플릿은 원본 LaTeX 템플릿의 라이선스를 따릅니다.

**라이선스**: Creative Commons CC BY 4.0

**원본 저작자**:
- Jinhong Jung (Soongsil University, DMLAB)

**기반 출처**:
- [LaTeX Template for KCC](http://ids.snu.ac.kr/wiki/LaTeX_template_for_KCC)
- [KIISE LaTeX Template GitHub](https://github.com/leejaymin/Kiise-Latex-template)
- [KIISE 공식 논문작성 양식](http://m.kiise.or.kr/conference/board/referenceview.do?CC=kcc&CS=2016&PARENT_ID=530300&&no=15)

---

## 🔄 변경 이력

### v1.0.0 (2025-10-30)
- ✨ Typst 템플릿 초기 버전 출시
- 📝 LaTeX 템플릿을 Typst로 변환
- 🔧 컴포넌트 기반 아키텍처 구현
- 📚 상세 사용 가이드 제공

---

## 💬 피드백 및 기여

이 템플릿에 대한 제안, 버그 리포트, 개선사항은 언제든 환영합니다.

**기여 방법:**
1. 이슈 등록
2. Pull Request 제출
3. 피드백 작성

---

**마지막 업데이트**: 2025년 10월 30일
**유지보수자**: 개발팀
