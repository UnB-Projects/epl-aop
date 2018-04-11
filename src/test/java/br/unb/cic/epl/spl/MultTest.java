package br.unb.cic.epl.spl;

import junit.framework.TestCase;

public class MultTest extends TestCase {
	public void testPrint() {
		Expression lhs = new Literal(2);
		Expression rhs = new Literal(3);
		Expression multExpression = new br.unb.cic.epl.spl.mult.Mult(lhs,rhs);
		assertEquals("(" + lhs.print() + " * " + rhs.print() + ")", multExpression.print());
	}
}
