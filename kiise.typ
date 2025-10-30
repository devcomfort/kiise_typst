#set document(
  title: "한국정보과학회 학술대회 논문 템플릿",
  author: "Authors",
)

// 페이지 설정
#set page(
  paper: "a4",
  margin: (top: 20mm, bottom: 20mm, left: 20mm, right: 20mm),
  numbering: "1",
  number-align: center,
)

// 제목 스타일
#let paper-title(kor-title, eng-title) = {
  align(center)[
    #text(size: 14pt, weight: "bold")[#kor-title]

    #v(0.5em)

    #text(size: 12pt, style: "italic")[#eng-title]
  ]
}

// 저자 정보 스타일
#let author-info(kor-authors, kor-affiliation, eng-authors, eng-affiliation, emails) = {
  align(center)[
    #text(size: 11pt)[#kor-authors]

    #v(0.3em)

    #text(size: 11pt)[#kor-affiliation]

    #v(0.3em)

    #text(size: 10pt, style: "italic")[#emails]

    #v(0.5em)

    #text(size: 11pt, style: "italic")[#eng-authors]

    #v(0.3em)

    #text(size: 11pt, style: "italic")[#eng-affiliation]
  ]
}

// 초록 스타일
#let abstract-section(content) = {
  [
    #text(size: 11pt, weight: "bold")[초록]

    #v(0.3em)

    #text(size: 10pt)[#content]
  ]
}

// 참고문헌 스타일
#let bibliography-section = {
  [
    #text(size: 11pt, weight: "bold")[참고문헌]
  ]
}

// ============================================================================
// Heading 설정 (LaTeX \section, \subsection 대응)
// ============================================================================

// Heading 번호 매김 설정
#set heading(numbering: "1.")

// Heading-1: 섹션 제목 (= 제목) [LaTeX \section 대응]
// 예: \section{서론} → = 서론
#show heading.where(level: 1): it => {
  v(0.5em)
  text(size: 12pt, weight: "bold")[#it.body]
  v(0.3em)
}

// Heading-2: 서브섹션 제목 (== 제목) [LaTeX \subsection 대응]
// 예: 섹션 내 소제목
#show heading.where(level: 2): it => {
  v(0.3em)
  text(size: 11pt, weight: "bold")[#it.body]
  v(0.2em)
}

// Heading-3: 소제목 (=== 제목) [LaTeX \subsubsection 대응]
// 예: 세부 항목
#show heading.where(level: 3): it => {
  v(0.2em)
  text(size: 10pt, weight: "bold")[#it.body]
  v(0.1em)
}

