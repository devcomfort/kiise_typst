#set document(
  title: "한국정보과학회 학술대회 논문 템플릿",
  author: "Authors",
)

// ============================================================================
// 페이지 설정
// ============================================================================
#set page(
  paper: "a4",
  margin: (top: 20mm, bottom: 20mm, left: 20mm, right: 20mm),
  numbering: "1",
  number-align: center,
)

// ============================================================================
// 제목 및 저자 정보 (LaTeX \maketitle 대응)
// ============================================================================

#let paper-title(kor-title, eng-title) = {
  align(center)[
    #text(size: 14pt, weight: "bold")[#kor-title]
    #v(0.5em)
    #text(size: 12pt, style: "italic")[#eng-title]
  ]
}

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

// ============================================================================
// 초록 (LaTeX \abstract 대응)
// ============================================================================

#let abstract-section(content) = {
  [
    #text(size: 11pt, weight: "bold")[초록]
    #v(0.3em)
    #text(size: 10pt)[#content]
  ]
}

// ============================================================================
// 용어 정의 (Terminology)
// ============================================================================

#let terminology(items) = {
  for item in items {
    text(size: 10pt)[
      *#item.term:* #item.definition
      #v(0.1em)
    ]
  }
}

// ============================================================================
// 그림 및 표 (LaTeX \figure, \table 대응)
// ============================================================================

#let figure-caption(content, caption) = {
  figure(
    align(center)[#content],
    caption: caption,
  )
}

#let table-caption(columns: 2, items, caption) = {
  figure(
    table(columns: columns, ..items),
    caption: caption,
    kind: "table",
  )
}

// ============================================================================
// 수식 스타일 (Equation)
// ============================================================================

#let equation(content, label: none) = {
  math.equation(content, label: label)
}

// ============================================================================
// 참고문헌 (LaTeX \bibliography 대응)
// ============================================================================

#let bibliography-section = {
  [
    #text(size: 11pt, weight: "bold")[참고문헌]
  ]
}

// ============================================================================
// Heading 설정 (LaTeX \section, \subsection, \subsubsection 대응)
// ============================================================================

// Heading 번호 매김 설정
#set heading(numbering: "1.")

// Heading-1: 섹션 (= 제목) [LaTeX \section 대응]
// 예: \section{서론} → = 서론
#show heading.where(level: 1): it => {
  v(0.5em)
  text(size: 12pt, weight: "bold")[#it.body]
  v(0.3em)
}

// Heading-2: 서브섹션 (== 제목) [LaTeX \subsection 대응]
// 예: \subsection{배경} → == 배경
#show heading.where(level: 2): it => {
  v(0.3em)
  text(size: 11pt, weight: "bold")[#it.body]
  v(0.2em)
}

// Heading-3: 소제목 (=== 제목) [LaTeX \subsubsection 대응]
// 예: === 세부 항목
#show heading.where(level: 3): it => {
  v(0.2em)
  text(size: 10pt, weight: "bold")[#it.body]
  v(0.1em)
}

// ============================================================================
// 부록 (LaTeX \appendix 대응)
// ============================================================================

#let appendix-section = {
  pagebreak()
  text(size: 11pt, weight: "bold")[부록]
  v(0.3em)
}

// ============================================================================
// 추가 스타일 설정
// ============================================================================

// 문단 설정
#set par(justify: true, leading: 0.65em)

// 리스트 설정
#set list(indent: 1em)
#set enum(indent: 1em)

