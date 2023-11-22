import { useState } from "react";
import { Container } from "react-bootstrap";

function FaqComponent() {

    return (
        <div>
            <Container>
                <h2>자주 묻는 질문</h2>
                <div className="faqMenuTop">
                    <ul className="faqDropdown">
                        <li>
                            <div className="faqDropdown">
                                <a href="">전체</a>
                            </div>
                        </li>
                    </ul>
                    <div className="faqContents"></div>
                    
                </div>
            </Container>
        </div>
    )
}

export default FaqComponent;