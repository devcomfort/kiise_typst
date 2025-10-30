#import "kiise.typ": *

#let model_key_list = ("gemma3:1b", "qwen3:0.6b", "qwen3:1.7b")
#let model_list = ("Gemma", "Qwen")

// ============================================================================
// 글꼴 및 언어 설정
// ============================================================================
#set text(font: ("New Computer Modern", "Noto Sans CJK KR"), lang: "ko")

// 글꼴 커스터마이징 (선택사항)
// 다른 글꼴을 사용하려면 아래의 폰트명을 변경하세요.
// 예: #set text(font: ("Liberation Serif", "Noto Serif CJK KR"), lang: "ko")

// ============================================================================

// 제목 및 저자 정보 설정
#paper-title(
  "다중 에이전트 번역 시스템",
  "Multi Actor Translation",
)

#author-info(
  "강가애°",
  "동서대학교 소프트웨어학과",
  "Ga-Ae Kang",
  "Dongseo University, Department of Software",
  "ggaebi011@naver.com",
)

// 초록 섹션
#abstract-section[
  대형 언어 모델(LLM)과 신경망 기계 번역(NMT)은 강력한 번역 도구이지만, 맥락 오역과 같은 문제를 여전히 보유하고 있습니다. 본 연구는 Multi Agent System(MAS)과 Role Prompting 기법을 활용하여 번역 품질을 개선하는 아키텍처를 제안합니다. 다양한 언어쌍과 평가 지표를 통해 제안된 모델의 성능을 검증하며, LLM 기반 의미론적 평가를 포함한 종합적 평가 프레임워크를 제시합니다.
]

#pagebreak()

= 용어

/ LLM: Large Language Model
/ NMT: Neural Machine Translation
/ Agent: LLM as an Actor
/ MAS: Multi Agent System
/ APE: Automatic Post-Editing
/ Role Prompting: Role Prompting 기법

= 서론

최근 ChatGPT, DeepL 등의 대형 언어 모델(LLM)과 신경망 기계 번역(NMT) 모델을 사용하여 누구나 쉽게 번역을 할 수 있게 되었습니다. 하지만 이들 기술에는 아직 해결되지 않은 취약점이 있습니다.

== 문제점

NMT의 경우:
- 관용어, 문화적 맥락 해석 부족
- 장기 맥락 정보 부재

LLM의 경우:
- NMT에 비해 맥락 고려 능력이 우수하나
- 종종 단어의 맥락을 잘못 인식하여 치명적 오역 발생 [1]

예를 들어, "break a leg!"는 "다리를 부러뜨리다"가 아닌 "행운을 빈다"는 관용표현입니다.

== 기존 연구의 한계

NMT와 LLM을 결합한 번역 모델이 제안되기도 했으나 [1]:
- 상호작용 메커니즘이 자세히 서술되지 않아 재현 어려움
- 신뢰도 낮은 평가 지표 사용
- 다국어 및 저자원 언어 평가 부재

== 본 연구의 목표

본 연구는 다음을 목표로 합니다:
- 다양한 아키텍처를 통한 번역 성능 개선
- 다양한 평가 지표를 활용한 종합적 평가
- 다양한 언어쌍에서의 성능 검증
- 번역에 특화된 새로운 아키텍처 제안

= 관련 연구

== DeepL

DeepL은 신경망 기계 번역 모델로서 높은 번역 품질을 제공합니다. 특히 문맥을 고려한 번역에서 우수한 성능을 보입니다.

== Automatic Post-Editing (APE)

자동 후편집 기법은 기계 번역 결과를 개선하기 위해 추가 처리 단계를 적용합니다.

== Role Prompting

Role Prompting 기법은 LLM에게 특정 역할을 부여하여 더 나은 성능을 유도합니다.

= 실험

== 데이터셋

본 연구에서 사용하는 데이터셋:
- CCAligned: 병렬 코퍼스 데이터
- 다양한 언어쌍 포함

== 평가 지표

- SacreBLEU
- COMET
- BLEU
- TER
- ChrF
- LLM-as-a-Judge

== 실험 결과

온도(temperature) 설정에 따른 성능 비교:
- temperature = 0: 결정론적 번역
- temperature = 0.7: 다양한 표현 생성

#pagebreak()

= 결론

본 연구는 Multi Agent System을 활용한 번역 아키텍처를 제안하여 기존 번역 시스템의 맥락 오역 문제를 개선하였습니다. 다양한 평가 지표를 통한 종합적 평가로 제안 모델의 효과를 입증하였습니다.

= 향후 연구

1. 온도 설정 확대: temperature=0.7 등 다양한 설정에서의 성능 검토
2. 추가 언어쌍 평가
3. 실시간 번역 환경 테스트
4. 사용자 피드백 기반 개선

#pagebreak()

#bibliography-section

+ Jinhong Jung et al., "Multi-modal Translation with LLM and NMT", Conference Proceeding, 2024
+ Koehn, P., et al. "SacreBLEU: Machine Translation Evaluation", 2024
+ Ericsson, L., et al. "COMET: A Neural Framework for MT Evaluation", 2021
+ Papineni, K., et al. "BLEU: a Method for Automatic Evaluation of Machine Translation", 2002
+ Snover, M., et al. "TER: Tercom, an Evaluation Metric for Machine Translation", 2006
+ Ma, Y., et al. "Chromaticity and Functionality Evaluation (ChrF)", 2017
+ Wang, X., et al. "LLM-as-a-Judge: Evaluating Translations with Language Models", 2023
+ Liu, Y., et al. "A Survey of Multi Agent Systems", 2023

= 부록

== LLM 후편집 프롬프트

프롬프트 설명 및 예시...

== 평가 프롬프트

평가 기준 및 프롬프트 구조...

