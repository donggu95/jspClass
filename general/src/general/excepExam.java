package general;

public class excepExam {

	public void sayNick(String nick) throws FoolException{
			if ("fool".contentEquals(nick)) {
				throw new FoolException();
			}
		System.out.println("당신의 별명은" + nick + "입니다. ");
	}
	
	public static void main(String[] args) {
		
		excepExam test = new excepExam();
		try {
			test.sayNick("fool");
			test.sayNick("genious");
		} catch(FoolException e) {
			System.out.println("에러가 발생했잖니");
		}
	}
}
	
		//트랜잭션 - 일련의 과정.... 정합성
		//상품발송 트랜잭션 - 재고확인 -> 포장 -> 영수증발행 -> 발송
		
/*
 * try { int c = 4 / 0; System.out.println(c); } catch(ArithmeticException e) {
 * System.out.println("0으로 나눌수 없어 임마."); }finally {
 * System.out.println("계산을 종료한다."); }
 */


