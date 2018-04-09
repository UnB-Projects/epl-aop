package br.unb.cic.epl.spl.eval;

public aspect EvalTest {
	public void br.unb.cic.epl.spl.LiteralTest.testEval() {
		br.unb.cic.epl.spl.Literal lit = new br.unb.cic.epl.spl.Literal(1000);
		assertEquals(new Integer(1000), lit.eval());
	}
	
	public void br.unb.cic.epl.spl.AddTest.testEval() {
		br.unb.cic.epl.spl.add.Add add = new br.unb.cic.epl.spl.add.Add(
			 	new br.unb.cic.epl.spl.Literal(1000),
			 	new br.unb.cic.epl.spl.Literal(2000));
		assertEquals(new Integer(3000), add.eval());
	}
	
	public void br.unb.cic.epl.spl.SubTest.testEval() {
		br.unb.cic.epl.spl.sub.Sub sub = new br.unb.cic.epl.spl.sub.Sub(
			 	new br.unb.cic.epl.spl.Literal(1000),
			 	new br.unb.cic.epl.spl.Literal(2000));
		assertEquals(new Integer(-1000), sub.eval());
	}
	
	public void br.unb.cic.epl.spl.MultTest.testEval() {
		br.unb.cic.epl.spl.mult.Mult mult = new br.unb.cic.epl.spl.mult.Mult(
			 	new br.unb.cic.epl.spl.Literal(1000),
			 	new br.unb.cic.epl.spl.Literal(2000));
		assertEquals(new Integer(2000000), mult.eval());
	}
}
