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
                    <Masonry columns={3} spacing={2}>
                        {heights.map((height, index) => (
                            <Paper key={index}>
                                <StyledAccordion sx={{ minHeight: height }}>
                                    <AccordionSummary expandIcon={<ExpandMoreIcon />}>
                                        <Typography>Accordion {index + 1}</Typography>
                                    </AccordionSummary>
                                    <AccordionDetails>Contents</AccordionDetails>
                                </StyledAccordion>
                            </Paper>
                        ))}
                    </Masonry>
                </div>
            </Container>
        </div>
    )
}

export default FaqComponent;