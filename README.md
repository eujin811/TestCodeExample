# TestCodeExample


## TDD 장점
- 문제 발견이 쉽다.
	- 모듈화된 코드와 독립적인 테스트를 통해 어느 부분이 잘못되어 있는지 정확하게 확인 할 수 있다.
- 변경이 쉽다. 
	- 리팩토링 + 기능추가가 쉽다. 해당 기능 잘 작동하는지 회귀 테스트 가능
- 통합이 간단하다.
	-  유닛 자체의 불확실성 제거해 각 기능 검증 후 합쳐서 다시 검증하는 통합 테스트에 효율적이다.
- 코드에 대한 문서화가 가능하다.
	- 코드나 모듈을 어떤 의도로 작성했는지 알 수 있고, 해당 의도에 따라 코드를 수정하거나 리팩토링 가능


## 단위 테스트의 특징 및 구조
- AAA / 준비(Arrange, given), 실행(Act, When), 검증(Assert, Then)
- 명확성
	- 테스트 케이스만 보고 어떤 테스트인지 알 수 있어야 한다.
	- 테스트 구문 내에 if문 지양
- 커버리지
	- 테스트 ㅋ[이스의 충족 지표 중 하나.
	- 테스트 진행시 코드 자체가 얼마나 실행 되었는가 나타낸다.
	- 수치가 매우 낮으면 문제지만 60% 이상으로 점수가 높다고 다른 의미는 ㅌ
- 독립성	
	- 테스트 코드들은 서로 분리되어 있고, 테스트 하는 코드와도 분리되어 문제를 쉽게 찾고 해결하게 해준다.
- 단위
	- 테스트 구문에서 단위는 동작의 단위 (코드단위 x)
	- 단일 동작의 단위는 여러 결과를 낼 수 있다.
	- 하나의 테스트로 모든 결과를 평가하는 것이 좋다.


## 좋은 단위 테스트의 4대 요소
- **리팩토링 내성**
- **회귀 방지**
- **빠른 피드백**
- **유지 보수성**

- 리팩토링 내성	
	- 테스트 구문을 변경하지 않고 코드를 리팩토링 할 수 있는지에 대한 척도	
	- 회귀 없이 주기적인 리팩토링 및 기능 추가가 가능해 앱의 지속 가능한 성장을 돕는 매커니즘 생성
		- 기존 기능 고장 시 조기 경고 + 배포전 문제 해결 유도
		- 코드 변경이 회귀로 이어지지 않는다는 확신을 준다.

	- 거짓 양성의 원인
		- * 거짓양성: 기능은 예전과 같이 완벽하게 작동하지만 테스트가 빨간색으로 바뀌는 경우

		- 거짓 양성의 경우 배포 이후 문제 생성 및 회귀 가능성이 높아지므로 발생이 적을수록 좋자.
		- 타당한 이유 없이 테스트 실패시 코드 문제 대응 능력및 의지가 희석된다. (실패에 익숙해질 경우 문제 인식성 낮아지고 기능 고장에도 배포되는 문제 가능성)
		- 거짓양성 빈도 높아질 경우 테스트 스위ㅌ 신뢰도 떨어진다.

- 회귀 방지
	- sw 버그 방지 가능해야 한다. 코드 수정후 버그가 있는데 테스트 통과 x
	- 테스트 통과 o, 기능 고장 -> 거짓 양성 / 회귀 방지
		- 단기적으로 리팩토링 필요하지 않아 중요성 낮아지지만 코드베이스 복잡하고 체계성이 떨어진다. (리팩토링 진행 필수!)
	- 기능 동작x 테스트 통과 -> 거짓 음성
	- 회귀방지 평가위해 커버리지, 코드 복작도, 코드 도메인 유의성 고려
	- 회귀방지 극대화 위해 가능한 많은 코드 테스트 실행 목표로 한다.

- 빠른 피드백
	- 코드 변경 시점마다 실행하여 t/f 피드백 즉각전달
	- 오래 걸리는 테스트의 경우 자주 실행 x, 코드 방향성 나빠지기 쉽다.

- 유지 보수성
	- 테스트 코드 라인이 많을수록 이해가 어렵다.
	- 사전에 가져와야 하는 무언가가 이다면 실행하기 어려운 것이다.

## 이상적인 테스트
- 테스트 정확도 : 발견된 버그수 / 허위 경보 발생 수 
- 4대 요소 (리팩토링 내성, 회귀 방지, 빠른 피드백, 유지보수성)의 경우 곱셈 계산
	- 회귀 방지, 리팩토링 내성, 빠른 피드백의 경우 상호 배타적이라 한가지를 선택해야 한다.
		- 엔드 투 엔드 (회귀방지 + 리팩토링 내성)
			- 많은 코드 테스트 (회귀방지 good)
			- 거짓 양성 보호 (리팩터링 내성 good)
			- 속도 느림
		- 간단한 테스트 (리패토링 내성, 빠른 피드백) / 단위 테스트
			- 코드 간단 + 거짓양성 낮아짐
			- 빠른 실행 -> 빠른 피드백
			- 기반 코드에서 실수 여지 많음 -> 회귀 자체를 나타내지 않음
		- 깨지기 쉬운 테스트 (회귀 방지 + 빠른 피드백)
			- 빠른 실행 + 회귀 방지 훌륭
			- 내부 구현 사항 바뀌기 때문에 리팩터링 내성 나쁨


## 테스트의 전략적 절충
- 좋은 테스트를 만드는 균형을 이루는것 어려움. 세가지 모두 최대 점수 불가 + 유지보수 관점을 계속 지킬 경우 테스트가 짧아진다. 
- 리팩토링 내성은 포기 x
- 버그 잘 찾는지(회귀방지) + 빠른 피드백 사이에 선택
	- '엔드투 엔드' 혹은 '간단한 테스트'

## 블랙박스 테스트, 화이트박스 테스트
- **블랙박스 테스트**: 내부 구조 몰라도 기능 검사 가능한 테스트, 명세와 요구사항에 따라 무엇을 하는지 중심으로 구축

- **화이트박스 테스트**: 앱의 내부 작업 검증 방식, 소스코드 파생된 테스트 진행

- 기본 테스트의 경우 **블랙박스 테스트**가 메인이 되어야한다. 테스트를 통해 비즈니스 요구 사항으로 거슬러 올라갈 수 없다면 테스트가 깨지기 쉽다.

# TDD

## TDD 사용
- **Red -> Green -> Refactor**
	- Red: 테스트가 실패하는 코드 작성 **(실패 확인)**
	- Green: 테스트를 통과하기 위한 **최소한의 구현**
	- Refactor: 코드를 정리하고 최적화

	
